SCRIPT = canuscript.sh
TESTDATA = data/test.fastq
OUTDIR = test_output

all: test

test:
	@echo ">>> Ejecutando pipeline con dataset de prueba..."
	@mkdir -p $(OUTDIR)
	@cp $(SCRIPT) $(OUTDIR)/
	@cp $(TESTDATA) $(OUTDIR)/
	cd $(OUTDIR) && bash $(SCRIPT)
	@echo ">>> Test completado. Resultados en $(OUTDIR)/"

clean:
	@echo ">>> Limpiando resultados..."
	rm -rf $(OUTDIR)
	@echo ">>> Limpieza completada."

release:
	@if [ -z "$(VERSION)" ]; then \
	  echo "❌ ERROR: Usa make release VERSION=1.0.1 ADDED='...'"; \
	  exit 1; \
	fi
	git tag v$(VERSION)
	VERSION=$(VERSION) ADDED="$(ADDED)" CHANGED="$(CHANGED)" FIXED="$(FIXED)" python update_changelog.py
	git add CHANGELOG.md
	git commit -m "docs: update changelog for v$(VERSION)"
	git push origin main
	git push origin v$(VERSION)
