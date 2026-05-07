.class Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/span/TextCrossFadeSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextLayoutParams"
.end annotation


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBreakStrategy:I

.field private mCanvasOffset:Landroid/graphics/PointF;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mJustificationMode:I

.field private mLineSpacingExtra:F

.field private mLineSpacingMultiplier:F

.field private mMaxLines:I

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mTextViewContentWidth:I

.field private mUseLineSpacingFromFallbacks:Z

.field public final synthetic this$0:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->this$0:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;)Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mCanvasOffset:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mCanvasOffset:Landroid/graphics/PointF;

    return-object p1
.end method


# virtual methods
.method public apply(Landroid/text/TextPaint;Ljava/lang/String;)Landroid/text/Layout;
    .registers 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mTextViewContentWidth:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p1, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mLineSpacingExtra:F

    iget v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mLineSpacingMultiplier:F

    invoke-virtual {p1, p2, v0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mMaxLines:I

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mEllipsizedWidth:I

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mBreakStrategy:I

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mIncludePad:Z

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mJustificationMode:I

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mHyphenationFrequency:I

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mUseLineSpacingFromFallbacks:Z

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p1, p0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method public from(Landroid/widget/TextView;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->this$0:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    invoke-static {v0, p1}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->access$500(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mTextViewContentWidth:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mLineSpacingExtra:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mLineSpacingMultiplier:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mMaxLines:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mBreakStrategy:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mIncludePad:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mJustificationMode:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mHyphenationFrequency:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isFallbackLineSpacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mUseLineSpacingFromFallbacks:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mEllipsizedWidth:I

    invoke-virtual {p1}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mAlignment:Landroid/text/Layout$Alignment;

    :cond_56
    return-void
.end method

.method public isDifferent(Landroid/widget/TextView;Landroid/text/Layout;)Z
    .registers 5

    iget v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mTextViewContentWidth:I

    iget-object v1, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->this$0:Lcom/android/launcher3/icons/span/TextCrossFadeSpan;

    invoke-static {v1, p1}, Lcom/android/launcher3/icons/span/TextCrossFadeSpan;->access$500(Lcom/android/launcher3/icons/span/TextCrossFadeSpan;Landroid/widget/TextView;)I

    move-result v1

    if-ne v0, v1, :cond_69

    iget v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mLineSpacingExtra:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_69

    iget v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mLineSpacingMultiplier:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_69

    iget v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mMaxLines:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-ne v0, v1, :cond_69

    iget v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mEllipsizedWidth:I

    invoke-virtual {p2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v1

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {p2}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object p2

    if-ne v0, p2, :cond_69

    iget p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mBreakStrategy:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v0

    if-ne p2, v0, :cond_69

    iget-boolean p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mIncludePad:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v0

    if-ne p2, v0, :cond_69

    iget p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mJustificationMode:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v0

    if-ne p2, v0, :cond_69

    iget p2, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mHyphenationFrequency:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v0

    if-ne p2, v0, :cond_69

    iget-boolean p0, p0, Lcom/android/launcher3/icons/span/TextCrossFadeSpan$TextLayoutParams;->mUseLineSpacingFromFallbacks:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->isFallbackLineSpacing()Z

    move-result p1

    if-eq p0, p1, :cond_67

    goto :goto_69

    :cond_67
    const/4 p0, 0x0

    goto :goto_6a

    :cond_69
    :goto_69
    const/4 p0, 0x1

    :goto_6a
    return p0
.end method
