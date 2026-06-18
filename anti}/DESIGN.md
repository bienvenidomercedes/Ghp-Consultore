---
name: Executive Precision
colors:
  surface: '#f7fafc'
  surface-dim: '#d7dadc'
  surface-bright: '#f7fafc'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f1f4f6'
  surface-container: '#ebeef0'
  surface-container-high: '#e5e9eb'
  surface-container-highest: '#e0e3e5'
  on-surface: '#181c1e'
  on-surface-variant: '#44474e'
  inverse-surface: '#2d3133'
  inverse-on-surface: '#eef1f3'
  outline: '#74777f'
  outline-variant: '#c4c6cf'
  surface-tint: '#465f88'
  primary: '#000a1e'
  on-primary: '#ffffff'
  primary-container: '#002147'
  on-primary-container: '#708ab5'
  inverse-primary: '#aec7f6'
  secondary: '#735c00'
  on-secondary: '#ffffff'
  secondary-container: '#fed65b'
  on-secondary-container: '#745c00'
  tertiary: '#000e03'
  on-tertiary: '#ffffff'
  tertiary-container: '#002810'
  on-tertiary-container: '#179d53'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#d6e3ff'
  primary-fixed-dim: '#aec7f6'
  on-primary-fixed: '#001b3d'
  on-primary-fixed-variant: '#2d476f'
  secondary-fixed: '#ffe088'
  secondary-fixed-dim: '#e9c349'
  on-secondary-fixed: '#241a00'
  on-secondary-fixed-variant: '#574500'
  tertiary-fixed: '#83fba5'
  tertiary-fixed-dim: '#66dd8b'
  on-tertiary-fixed: '#00210c'
  on-tertiary-fixed-variant: '#005227'
  background: '#f7fafc'
  on-background: '#181c1e'
  surface-variant: '#e0e3e5'
typography:
  display-lg:
    fontFamily: Montserrat
    fontSize: 48px
    fontWeight: '700'
    lineHeight: '1.2'
    letterSpacing: -0.02em
  display-lg-mobile:
    fontFamily: Montserrat
    fontSize: 32px
    fontWeight: '700'
    lineHeight: '1.2'
    letterSpacing: -0.02em
  headline-md:
    fontFamily: Montserrat
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.3'
  headline-md-mobile:
    fontFamily: Montserrat
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.3'
  title-sm:
    fontFamily: Montserrat
    fontSize: 20px
    fontWeight: '600'
    lineHeight: '1.4'
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.5'
  label-caps:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '700'
    lineHeight: '1.5'
    letterSpacing: 0.1em
  button-text:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: '1'
    letterSpacing: 0.02em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  unit: 8px
  container-max: 1200px
  gutter: 24px
  margin-mobile: 16px
  margin-desktop: 40px
  section-gap: 80px
---

## Brand & Style
The design system for this financial consultancy is rooted in the concepts of stability, heritage, and modern efficiency. It targets high-net-worth individuals and corporate entities who require meticulous accounting and strategic financial guidance. 

The visual style is **Corporate Modern with subtle Tonal Layering**. It leverages high-quality typography and a disciplined grid to communicate reliability. The aesthetic avoids unnecessary ornamentation, focusing instead on clarity and "premium utility." Every interface element is designed to feel substantial and intentional, evoking a sense of institutional trust while remaining agile and digitally native.

## Colors
The palette is dominated by **Deep Navy (#002147)**, representing authority and depth. This is paired with a **Crisp White** base to ensure a clean, high-contrast reading environment. 

- **Primary (Navy):** Used for headers, primary navigation, and dominant UI containers.
- **Secondary (Gold):** Reserved for high-value accents, premium indicators, and decorative borders that signal quality.
- **Tertiary (Emerald Green):** Utilized exclusively for conversion-focused actions (CTAs) and positive financial indicators (growth, success).
- **Neutral (Light Grey):** Applied to section backgrounds and subtle borders to create a structured hierarchy without introducing visual noise.

## Typography
The system employs a dual-font strategy. **Montserrat** provides a geometric, confident structure for headlines, creating a bold and modern architectural feel. **Inter** is used for all body and UI text, selected for its exceptional legibility and neutral, professional tone in data-heavy contexts.

Use `display-lg` for hero sections. Headlines should predominantly use the Primary Navy color. Body text should maintain a high contrast against the white background. The `label-caps` style is intended for small eyebrow text above headings or categorization tags.

## Layout & Spacing
The design system follows a **12-column fixed grid** for desktop, centering content within a 1200px container to ensure readability on wide monitors. On mobile, it transitions to a fluid 4-column layout.

The spacing rhythm is built on an **8px base unit**. Generous whitespace is a core principle here; sections should be separated by a minimum of 80px (`section-gap`) to allow the brand to "breathe" and feel premium. Internal card padding should consistently use 24px or 32px to maintain a feeling of openness.

## Elevation & Depth
Depth is handled with extreme subtlety to maintain a clean, professional appearance. 

- **Ambient Shadows:** Cards and interactive containers use a very soft, multi-layered shadow. (e.g., `0px 4px 20px rgba(0, 33, 71, 0.05)`). The shadow color is slightly tinted with the Primary Navy to ensure it looks integrated rather than "dirty."
- **Tonal Layering:** Use the Neutral Light Grey (#F4F7F9) for secondary background sections to separate content blocks without needing heavy lines.
- **Hover States:** Interactive elements should lift slightly on the Y-axis (2-4px) with an increased shadow spread to provide tactile feedback.

## Shapes
The shape language is **Soft (0.25rem)**. This slight rounding takes the "edge" off the corporate aesthetic, making the interface feel modern and approachable without losing its professional rigor. 

- **Small elements (Buttons, Inputs):** 4px radius.
- **Large elements (Cards, Modals):** 8px or 12px radius.
- **Icons:** Use 2px stroke weight linear icons with slightly rounded terminals to match the UI's geometry.

## Components
- **Buttons:** Primary CTAs use the Emerald Green background with White text for maximum conversion visibility. Secondary buttons use a Navy outline or Ghost style. Gold is used for "Premium" or "Highlight" actions.
- **Input Fields:** Use a subtle 1px border in a mid-grey, moving to a 2px Primary Navy border on focus. Labels should always be visible above the field.
- **Cards:** White background, subtle ambient shadow, and a 1px Light Grey border. A 4px top-border in Navy or Gold can be used to categorize card types.
- **Lists:** Use custom Emerald Green checkmarks for feature lists to reinforce a "positive/success" sentiment.
- **Data Tables:** Clean, header-only backgrounds in Light Grey. Row separators should be 1px and very light (#E0E0E0). No vertical borders.
- **Chips/Tags:** Used for status (e.g., "Active", "Pending"). Backgrounds should be highly desaturated versions of the status color with high-contrast text.