.class public Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;
.super Landroid/text/SpannableString;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/span/SpannableStringWithPrefix$ITextAppearanceChangedListener;
    }
.end annotation


# static fields
.field public static final PREFIX_PLACEHOLDER_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mImagePrefixSpan:Lcom/android/launcher3/icons/span/ImagePrefixSpan;

.field private mOriginText:Ljava/lang/String;

.field private mPrefixDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;

    const-string v0, "SpannableStringWithPrefix"

    sput-object v0, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;->mPrefixDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Lcom/android/launcher3/icons/span/ImagePrefixSpan;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/icons/span/ImagePrefixSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object p1, p0, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;->mImagePrefixSpan:Lcom/android/launcher3/icons/span/ImagePrefixSpan;

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x21

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static build(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;Z)Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;
    .registers 9

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_17

    instance-of p1, p0, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;

    if-eqz p1, :cond_11

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;

    goto :goto_81

    :cond_11
    new-instance p1, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;

    invoke-direct {p1, p0}, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_81

    :cond_17
    if-eqz p3, :cond_6a

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez p3, :cond_67

    int-to-float v2, p3

    cmpl-float v3, v2, p2

    if-lez v3, :cond_67

    int-to-float p3, v0

    div-float/2addr p3, v2

    float-to-int p2, p2

    int-to-float v0, p2

    mul-float/2addr v0, p3

    float-to-int v0, v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_66

    sget-object p3, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "appendDrawableToLabelPrefix reset drawable size. oW=%d,oH=%d,nW=%d,nH=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    move p3, p2

    :cond_67
    invoke-virtual {p1, v1, v1, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6a
    new-instance p2, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move-object p1, p2

    :goto_81
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;->setOriginText(Ljava/lang/String;)V

    return-object p1
.end method

.method private setOriginText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;->mOriginText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOriginText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;->mOriginText:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefixDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;->mPrefixDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public onTextAppearanceChanged(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix;->mPrefixDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix$ITextAppearanceChangedListener;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix$ITextAppearanceChangedListener;

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/span/SpannableStringWithPrefix$ITextAppearanceChangedListener;->onTextAppearanceChanged(I)V

    :cond_b
    return-void
.end method
