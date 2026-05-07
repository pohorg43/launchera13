.class public Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;
.super Lcom/coui/appcompat/progressbar/COUILoadProgress;
.source ""


# static fields
.field public static final o0:[I


# instance fields
.field public E:I

.field public F:F

.field public G:I

.field public H:I

.field public I:Landroid/graphics/Bitmap;

.field public J:Landroid/graphics/Bitmap;

.field public K:Landroid/graphics/Bitmap;

.field public L:Landroid/graphics/Paint;

.field public M:Landroid/graphics/Paint;

.field public N:Landroid/graphics/Paint;

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:F

.field public W:F

.field public a0:F

.field public b0:Ljava/util/Locale;

.field public c0:I

.field public d0:I

.field public e0:I

.field public f0:F

.field public g0:Z

.field public h0:I

.field public i0:[F

.field public j0:Landroid/animation/ValueAnimator;

.field public k0:Landroid/animation/ValueAnimator;

.field public l0:Landroid/view/animation/Interpolator;

.field public m0:Landroid/view/animation/Interpolator;

.field public n0:Z

.field public o:Landroid/text/TextPaint;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public s:Landroid/content/res/ColorStateList;

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Landroid/graphics/Paint$FontMetricsInt;

.field public w:I

.field public x:Landroid/graphics/Paint;

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/support/appcompat/R$attr;->couiColorSecondary:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o0:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiInstallLoadProgressStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/progressbar/COUILoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->r:I

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->t:I

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->v:Landroid/graphics/Paint$FontMetricsInt;

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->w:I

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->x:Landroid/graphics/Paint;

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->y:I

    iput-boolean v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->z:Z

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->E:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->F:F

    const/16 v2, 0xff

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->G:I

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->H:I

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->L:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->M:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->N:Landroid/graphics/Paint;

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->W:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->c0:I

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->d0:I

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->e0:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->f0:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->i0:[F

    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    if-eqz p2, :cond_4a

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_4a
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o0:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->S:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->T:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->b0:Ljava/util/Locale;

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUILoadProgress:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$color;->coui_install_load_progress_text_color_in_progress:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->U:I

    sget v3, Lcom/support/appcompat/R$styleable;->COUILoadProgress_couiDefaultDrawable:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_87

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_87
    sget v3, Lcom/support/appcompat/R$styleable;->COUILoadProgress_couiState:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/support/appcompat/R$dimen;->coui_install_download_progress_textsize:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUIInstallLoadProgress:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setLoadStyle(I)V

    sget p2, Lcom/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallGiftBg:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallViewHeight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallViewWidth:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    const/high16 p3, 0x3fc00000  # 1.5f

    invoke-virtual {p0, p2, p3, v1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->i(IFZ)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->P:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIInstallLoadProgress_brightness:I

    const p3, 0x3f4ccccd  # 0.8f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->a0:F

    sget p2, Lcom/support/appcompat/R$styleable;->COUIInstallLoadProgress_disabledColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->h0:I

    new-instance p2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->l0:Landroid/view/animation/Interpolator;

    new-instance p2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->m0:Landroid/view/animation/Interpolator;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_172

    if-ne p2, v2, :cond_fe

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/support/appcompat/R$dimen;->coui_install_download_progress_round_border_radius:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->w:I

    goto :goto_12d

    :cond_fe
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/support/appcompat/R$dimen;->coui_install_download_progress_round_border_radius_small:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->w:I

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->b0:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "zh"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_12d

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/support/appcompat/R$dimen;->coui_install_download_progress_width_in_foreign_language:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->P:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->P:I

    :cond_12d
    :goto_12d
    sget p2, Lcom/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallDefaultColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->s:Landroid/content/res/ColorStateList;

    sget p2, Lcom/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallPadding:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->t:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallTextview:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->p:Ljava/lang/String;

    sget p2, Lcom/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallTextsize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->q:I

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->q:I

    int-to-float v0, v0

    invoke-static {v0, p2, p3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->q:I

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->u:Ljava/lang/String;

    if-nez p2, :cond_17e

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$string;->coui_install_load_progress_apostrophe:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->u:Ljava/lang/String;

    goto :goto_17e

    :cond_172
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_install_download_progress_circle_round_border_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->w:I

    :cond_17e
    :goto_17e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_install_download_progress_round_border_radius_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->V:F

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)Z
    .registers 1

    invoke-super {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->performClick()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)Z
    .registers 1

    invoke-super {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->performClick()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final d()V
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->P:I

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->p:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6f

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->P:I

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->t:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4d

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "^[一-龥]{1}$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    add-int/lit8 v3, v3, 0x1

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_4d
    if-lez v3, :cond_51

    const/4 v2, 0x1

    goto :goto_52

    :cond_51
    move v2, v1

    :goto_52
    if-nez v2, :cond_60

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_60

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_60
    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->p:Ljava/lang/String;

    :cond_6f
    return-void
.end method

.method public drawableStateChanged()V
    .registers 1

    invoke-super {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->drawableStateChanged()V

    return-void
.end method

.method public final e(Z)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3ecccccd  # 0.4f

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->n0:Z

    if-nez p1, :cond_2e

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2e
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3d
    return-void
.end method

.method public final f(Landroid/content/Context;F)I
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p0

    float-to-double p0, p2

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public final g(I)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 1

    const-class p0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)I
    .registers 5

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->h0:I

    return p0

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->i0:[F

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->i0:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->W:F

    mul-float/2addr v2, p0

    aput v2, v0, v1

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/16 v2, 0xff

    if-le v0, v2, :cond_31

    move v0, v2

    :cond_31
    if-le v1, v2, :cond_34

    move v1, v2

    :cond_34
    if-le p0, v2, :cond_37

    move p0, v2

    :cond_37
    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public final i(IFZ)I
    .registers 4

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->f(Landroid/content/Context;F)I

    move-result p0

    goto :goto_15

    :cond_b
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->f(Landroid/content/Context;F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    :goto_15
    sub-int/2addr p1, p0

    return p1
.end method

.method public final j(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    int-to-float p2, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result p0

    if-eqz p0, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p0, p2, :cond_12

    goto :goto_18

    :cond_12
    const/4 p2, 0x0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_18
    :goto_18
    return-object p1
.end method

.method public final k(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 10

    if-eqz p5, :cond_76

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_76

    if-eqz p6, :cond_76

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_76

    :cond_11
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->S:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->h(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p4, :cond_29

    iget-object p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->L:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->T:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->h(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_29
    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->F:F

    sub-float v1, p2, v0

    sub-float v2, p3, v0

    add-float/2addr p2, v0

    add-float/2addr p3, v0

    invoke-direct {p4, v1, v2, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object p2

    iget p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->w:I

    int-to-float p3, p3

    iget-object p2, p2, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {p2, p4, p3}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    iget-object p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->M:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->G:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->N:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->H:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    iget-object p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p2, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_76
    :goto_76
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;FFFFZFF)V
    .registers 10

    invoke-virtual {p1, p7, p8}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->x:Landroid/graphics/Paint;

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->S:I

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->h(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p6, :cond_20

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->x:Landroid/graphics/Paint;

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->T:I

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->h(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_20
    sub-float/2addr p5, p3

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p5, p2

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->V:F

    sub-float/2addr p5, p2

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object p2

    iget-object p2, p2, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {p2, v0, p5}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    neg-float p0, p7

    neg-float p2, p8

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final m(Landroid/graphics/Canvas;FFFF)V
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->p:Ljava/lang/String;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->q:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->f0:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->t:I

    int-to-float v2, v1

    sub-float v0, p4, v0

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v0, v1, v3, v2}, Landroidx/core/content/res/a;->a(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->v:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    sub-float v2, p5, v2

    div-float/2addr v2, v3

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->z:Z

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->U:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_54

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->y:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_5c

    :cond_54
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->y:I

    int-to-float p2, p2

    sub-float p2, p4, p2

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_5c
    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->p:Ljava/lang/String;

    iget-object p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v0, v2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->z:Z

    :cond_69
    return-void
.end method

.method public final n(Z)V
    .registers 15

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->g0:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->e(Z)V

    iget-boolean v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->n0:Z

    if-eqz v1, :cond_e

    return-void

    :cond_e
    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    const-wide/16 v2, 0x154

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v1, :cond_89

    if-eq v1, v7, :cond_89

    if-eq v1, v8, :cond_20

    goto/16 :goto_f7

    :cond_20
    new-array p1, v8, [F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->F:F

    aput v1, p1, v0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->E:I

    int-to-float v1, v1

    aput v1, p1, v7

    const-string v1, "circleRadiusHolder"

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v1, v8, [F

    iget v9, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->W:F

    aput v9, v1, v0

    aput v6, v1, v7

    const-string v6, "circleBrightnessHolder"

    invoke-static {v6, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v6, v8, [I

    fill-array-data v6, :array_fa

    const-string v9, "circleInAlphaHolder"

    invoke-static {v9, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v9, v8, [I

    fill-array-data v9, :array_102

    const-string v10, "circleOutAlphaHolder"

    invoke-static {v10, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v5, v0

    aput-object v1, v5, v7

    aput-object v6, v5, v8

    aput-object v9, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->m0:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$6;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_f7

    :cond_89
    new-array v1, v8, [F

    iget v9, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->W:F

    aput v9, v1, v0

    aput v6, v1, v7

    const-string v9, "brightnessHolder"

    invoke-static {v9, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v9, v8, [F

    iget v10, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->e0:I

    int-to-float v10, v10

    aput v10, v9, v0

    const/4 v10, 0x0

    aput v10, v9, v7

    const-string v11, "narrowHolderX"

    invoke-static {v11, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    new-array v11, v8, [F

    iget v12, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->d0:I

    int-to-float v12, v12

    aput v12, v11, v0

    aput v10, v11, v7

    const-string v10, "narrowHolderY"

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    new-array v11, v8, [F

    iget v12, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->f0:F

    aput v12, v11, v0

    aput v6, v11, v7

    const-string v6, "narrowHolderFont"

    invoke-static {v6, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v0

    aput-object v9, v5, v7

    aput-object v10, v5, v8

    aput-object v6, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->m0:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$3;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$3;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$4;

    invoke-direct {v2, p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$4;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_f7
    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->g0:Z

    return-void

    :array_fa
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_102
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->I:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    sget v0, Lcom/support/appcompat/R$drawable;->coui_install_load_progress_circle_load:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->g(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->I:Landroid/graphics/Bitmap;

    :cond_1a
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->J:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_24
    sget v0, Lcom/support/appcompat/R$drawable;->coui_install_load_progress_circle_reload:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->g(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->J:Landroid/graphics/Bitmap;

    :cond_2c
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->K:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_36
    sget v0, Lcom/support/appcompat/R$drawable;->coui_install_load_progress_circle_pause:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->g(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->K:Landroid/graphics/Bitmap;

    :cond_3e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->b0:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->b0:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_install_download_progress_width_in_foreign_language:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->b0:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->P:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->P:I

    goto :goto_4b

    :cond_41
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->P:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->P:I

    :goto_4b
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    :cond_4e
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->I:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->I:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_14
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->K:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->K:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_23
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->J:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->J:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_32
    invoke-super {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 22

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-super/range {p0 .. p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->e0:I

    int-to-float v11, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->d0:I

    int-to-float v12, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->e0:I

    sub-int/2addr v0, v1

    int-to-float v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getHeight()I

    move-result v0

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->d0:I

    sub-int/2addr v0, v1

    int-to-float v14, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->b:I

    const/4 v15, 0x2

    const-wide/high16 v16, 0x4000000000000000L  # 2.0

    const-wide/high16 v18, 0x3ff0000000000000L  # 1.0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_70

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    if-ne v0, v15, :cond_49

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v2, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->J:Landroid/graphics/Bitmap;

    iget-object v6, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->K:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_172

    :cond_49
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v8}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->l(Landroid/graphics/Canvas;FFFFZFF)V

    iget-object v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->U:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->z:Z

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    int-to-float v4, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->m(Landroid/graphics/Canvas;FFFF)V

    goto/16 :goto_172

    :cond_70
    if-nez v0, :cond_a8

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    if-ne v0, v15, :cond_93

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v2, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->I:Landroid/graphics/Bitmap;

    iget-object v6, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->K:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_a8

    :cond_93
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v8}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->l(Landroid/graphics/Canvas;FFFFZFF)V

    iget-object v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->U:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_a8
    :goto_a8
    iget v0, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->b:I

    const/4 v8, 0x1

    if-eq v0, v8, :cond_af

    if-ne v0, v15, :cond_15e

    :cond_af
    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    if-ne v1, v15, :cond_f3

    if-ne v0, v8, :cond_d3

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v2, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->K:Landroid/graphics/Bitmap;

    iget-object v6, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->J:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_15e

    :cond_d3
    if-ne v0, v15, :cond_15e

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v2, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    int-to-double v0, v0

    mul-double v0, v0, v18

    div-double v0, v0, v16

    double-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->J:Landroid/graphics/Bitmap;

    iget-object v6, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->K:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->k(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_15e

    :cond_f3
    const/4 v7, 0x0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->c:I

    int-to-float v0, v0

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->y:I

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v15, v7

    move/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->l(Landroid/graphics/Canvas;FFFFZFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_12a

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->y:I

    int-to-float v0, v0

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    int-to-float v1, v1

    invoke-virtual {v10, v11, v12, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_13e

    :cond_12a
    invoke-virtual {v10, v15, v15}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->y:I

    int-to-float v0, v0

    sub-float v0, v13, v0

    add-float/2addr v0, v15

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    int-to-float v1, v1

    invoke-virtual {v10, v0, v12, v13, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/high16 v0, -0x80000000

    invoke-virtual {v10, v0, v15}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_13e
    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_154

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v8}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->l(Landroid/graphics/Canvas;FFFFZFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_154
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->z:Z

    iget-object v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->S:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_15e
    :goto_15e
    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_172

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    int-to-float v4, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->m(Landroid/graphics/Canvas;FFFF)V

    :cond_172
    :goto_172
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->d:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->c:I

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->b:I

    if-eqz v0, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    :cond_d
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->p:Ljava/lang/String;

    if-eqz p0, :cond_14

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_14
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/Button;->setMeasuredDimension(II)V

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_d

    goto :goto_4d

    :cond_d
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->r:I

    if-nez p1, :cond_1e

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->q:I

    :cond_1e
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->c0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiDefaultTextColor:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    :cond_37
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    invoke-static {p1, p2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->a(Landroid/graphics/Paint;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->v:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->d()V

    :goto_4d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_19

    if-eq p1, v2, :cond_14

    if-eq p1, v1, :cond_f

    goto/16 :goto_e9

    :cond_f
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->n(Z)V

    goto/16 :goto_e9

    :cond_14
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->n(Z)V

    goto/16 :goto_e9

    :cond_19
    iget-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->g0:Z

    if-eqz p1, :cond_1f

    goto/16 :goto_e9

    :cond_1f
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->e(Z)V

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    const-wide/16 v3, 0xc8

    const/4 v5, 0x2

    if-eqz p1, :cond_7a

    if-eq p1, v2, :cond_7a

    if-eq p1, v5, :cond_2f

    goto/16 :goto_e7

    :cond_2f
    new-array p1, v5, [F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->F:F

    aput v1, p1, v0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->E:I

    int-to-float v1, v1

    const v6, 0x3f666666  # 0.9f

    mul-float/2addr v1, v6

    aput v1, p1, v2

    const-string v1, "circleRadiusHolder"

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v1, v5, [F

    iget v6, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->W:F

    aput v6, v1, v0

    iget v6, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->a0:F

    aput v6, v1, v2

    const-string v6, "circleBrightnessHolder"

    invoke-static {v6, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v5, v0

    aput-object v1, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->l0:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_e7

    :cond_7a
    new-array p1, v5, [F

    const/high16 v6, 0x3f800000  # 1.0f

    aput v6, p1, v0

    iget v6, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->a0:F

    aput v6, p1, v2

    const-string v6, "brightnessHolder"

    invoke-static {v6, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v7, v6, v0

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3d4ccccd  # 0.05f

    mul-float/2addr v8, v9

    aput v8, v6, v2

    const-string v8, "narrowHolderX"

    invoke-static {v8, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v8, v5, [F

    aput v7, v8, v0

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    aput v7, v8, v2

    const-string v7, "narrowHolderY"

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    new-array v8, v5, [F

    fill-array-data v8, :array_ea

    const-string v9, "narrowHolderFont"

    invoke-static {v9, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v9, v0

    aput-object v6, v9, v2

    aput-object v7, v9, v5

    aput-object v8, v9, v1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->l0:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_e7
    iput-boolean v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->g0:Z

    :goto_e9
    return v2

    :array_ea
    .array-data 4
        0x3f800000  # 1.0f
        0x3f6b851f  # 0.92f
    .end array-data
.end method

.method public setDefaultTextSize(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->q:I

    return-void
.end method

.method public setDisabledColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->h0:I

    return-void
.end method

.method public setLoadStyle(I)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_52

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget p1, Lcom/support/appcompat/R$drawable;->coui_install_load_progress_circle_load:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->g(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->I:Landroid/graphics/Bitmap;

    sget p1, Lcom/support/appcompat/R$drawable;->coui_install_load_progress_circle_reload:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->g(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->J:Landroid/graphics/Bitmap;

    sget p1, Lcom/support/appcompat/R$drawable;->coui_install_load_progress_circle_pause:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->g(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->K:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_install_download_progress_default_circle_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/high16 v0, 0x3fc00000  # 1.5f

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->i(IFZ)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->E:I

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->F:F

    goto :goto_5b

    :cond_52
    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->R:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->x:Landroid/graphics/Paint;

    :goto_5b
    return-void
.end method

.method public setMaxBrightness(I)V
    .registers 2

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->a0:F

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->p:Ljava/lang/String;

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o:Landroid/text/TextPaint;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->d()V

    :cond_11
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    :cond_14
    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    if-eqz p1, :cond_4

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->c0:I

    :cond_4
    return-void
.end method

.method public setTextId(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTextPadding(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->t:I

    return-void
.end method

.method public setTextSize(I)V
    .registers 2

    if-eqz p1, :cond_4

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->r:I

    :cond_4
    return-void
.end method

.method public setTouchModeHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->Q:I

    return-void
.end method

.method public setTouchModeWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->O:I

    return-void
.end method
