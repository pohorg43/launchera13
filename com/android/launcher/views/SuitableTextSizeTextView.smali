.class public Lcom/android/launcher/views/SuitableTextSizeTextView;
.super Landroid/widget/TextView;
.source ""


# static fields
.field public static final TEXT_SIZE_LEVEL_1:I = 0x1

.field public static final TEXT_SIZE_LEVEL_2:I = 0x2

.field public static final TEXT_SIZE_LEVEL_3:I = 0x3

.field public static final TEXT_SIZE_LEVEL_4:I = 0x4

.field public static final TEXT_SIZE_LEVEL_5:I = 0x5

.field public static final TEXT_SIZE_LEVEL_N:I = 0x6


# instance fields
.field private final mTextSizeLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/views/SuitableTextSizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/SuitableTextSizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher/views/SuitableTextSizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p4, Lcom/android/launcher3/R$styleable;->SuitableTextSize:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher/views/SuitableTextSizeTextView;->getColorChangeTextLevel(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/views/SuitableTextSizeTextView;->mTextSizeLevel:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/views/SuitableTextSizeTextView;->setTextSize(F)V

    return-void
.end method

.method private getColorChangeTextLevel(I)I
    .registers 5

    const/4 p0, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_12

    if-eq p1, v1, :cond_10

    if-eq p1, v0, :cond_e

    if-eq p1, p0, :cond_13

    const/4 p0, 0x5

    goto :goto_13

    :cond_e
    move p0, v0

    goto :goto_13

    :cond_10
    move p0, v1

    goto :goto_13

    :cond_12
    move p0, v2

    :cond_13
    :goto_13
    return p0
.end method


# virtual methods
.method public setTextSize(F)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_15

    const/high16 v0, 0x3f800000  # 1.0f

    :cond_15
    div-float/2addr v1, v0

    iget v0, p0, Lcom/android/launcher/views/SuitableTextSizeTextView;->mTextSizeLevel:I

    invoke-static {p1, v1, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
