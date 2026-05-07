.class public Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;
.super Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "…"

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "‥"

.field private static final IS_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "COUICollapsingToolbarLayout"

.field private static final TITLE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedSubtitleMarginTopIfNotHidden:I

.field private mCurrentBounds:Landroid/graphics/RectF;

.field private mExpandedBounds:Landroid/graphics/Rect;

.field private mIconView:Landroid/view/View;

.field private mIconViewFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTitleTranslateOffset:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->TITLE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedSubtitleMarginTopIfNotHidden:I

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mExpandedBounds:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    new-instance p3, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$1;-><init>(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)V

    iput-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconViewFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->init(Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_appbar_subtitle_collapsed_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedSubtitleMarginTopIfNotHidden:I

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    return-object p0
.end method

.method private addIconView()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    const v1, 0x800053

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_14
    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconViewFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private calculateCollapsedBound()I
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    check-cast v0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isSubtitleHideEnable()Z

    move-result v1

    if-eqz v1, :cond_15

    return v2

    :cond_15
    invoke-virtual {v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findSubtitleContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_24

    goto :goto_40

    :cond_24
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedSubtitleMarginTopIfNotHidden:I

    add-int/2addr v0, p0

    sub-int/2addr v1, v0

    return v1

    :cond_40
    :goto_40
    return v2
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    if-eqz v1, :cond_f

    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_11

    :cond_f
    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private createStaticLayout()Landroid/text/StaticLayout;
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "scale"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_66

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_21

    goto :goto_66

    :cond_21
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :try_start_27
    iget-object v3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v0

    float-to-int v0, v4

    invoke-static {v1, v3, v0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->setIsRtl(Z)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object p0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->setIncludePad(Z)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->setMaxLines(I)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->build()Landroid/text/StaticLayout;

    move-result-object v2
    :try_end_57
    .catch Lcom/google/android/material/appbar/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException; {:try_start_27 .. :try_end_57} :catch_58

    goto :goto_66

    :catch_58
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUICollapsingToolbarLayout"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_66
    :goto_66
    return-object v2
.end method

.method private getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_1a

    :catch_d
    move-exception p0

    const-string p1, "getReflectField error: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "COUICollapsingToolbarLayout"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1a
    return-object p0
.end method

.method private getScale()F
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "scale"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return p0

    :catch_15
    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method private getTextHelperCollapsedBounds()Landroid/graphics/Rect;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "collapsedBounds"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTextHelperCurrentBounds()Landroid/graphics/RectF;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "currentBounds"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTextHelperExpandedBounds()Landroid/graphics/Rect;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "expandedBounds"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTextLayout()Landroid/text/StaticLayout;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string/jumbo v2, "textLayout"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/StaticLayout;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTextPaint()Landroid/text/TextPaint;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string/jumbo v2, "textPaint"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextPaint;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->resetTextHelperInterpolator()V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextPaint:Landroid/text/TextPaint;

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUICollapsingToolbarLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$styleable;->COUICollapsingToolbarLayout_iconView:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->setIconView(I)V

    :cond_22
    return-void
.end method

.method private setReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_18

    :catch_c
    move-exception p0

    const-string p1, "setReflectField error: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "COUICollapsingToolbarLayout"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method private translateTitleIfNeed()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->calculateCollapsedBound()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTitleTranslateOffset:I

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_18
    return-void
.end method

.method private updateTextLayoutIfNeed()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_59

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxLines()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_59

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_19

    goto :goto_59

    :cond_19
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    return-void

    :cond_24
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "‥"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "…"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :cond_40
    :goto_40
    if-eqz v1, :cond_59

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->createStaticLayout()Landroid/text/StaticLayout;

    move-result-object v0

    if-nez v0, :cond_49

    return-void

    :cond_49
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string/jumbo v3, "textLayout"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->setReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    :cond_59
    :goto_59
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCollapsingTextHelper()Lcom/google/android/material/internal/CollapsingTextHelper;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    return-object p0
.end method

.method public getCollapsingTextLayout()Landroid/text/StaticLayout;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method public getCollapsingTextPaint()Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public getIconView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    return-object p0
.end method

.method public isCollapsed()Z
    .registers 2

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isExpanded()Z
    .registers 2

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->updateTextLayoutIfNeed()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getTextLayout()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getTextHelperCurrentBounds()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    :cond_17
    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getTextHelperCollapsedBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    :cond_25
    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getTextHelperExpandedBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mExpandedBounds:Landroid/graphics/Rect;

    :cond_33
    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->translateTitleIfNeed()V

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_86

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mExpandedBounds:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_81

    :cond_67
    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mExpandedBounds:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_81
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_86
    return-void
.end method

.method public resetTextHelperInterpolator()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget-object v1, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->TITLE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconView(I)V
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_11

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_11
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->setIconView(Landroid/view/View;)V

    return-void
.end method

.method public setIconView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_e

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    goto :goto_13

    :cond_e
    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->addIconView()V

    :goto_13
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;-><init>(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateIconViewLocationIfNeed()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    if-eqz v1, :cond_d1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1c

    goto/16 :goto_d1

    :cond_1c
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "‥"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3a

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "…"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_3a

    :cond_38
    move v1, v2

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v1, 0x1

    :goto_3b
    iget-object v3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getScale()F

    move-result v4

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    int-to-float v6, v3

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTitleTranslateOffset:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result v7

    mul-float/2addr v7, v6

    add-float/2addr v7, v5

    float-to-int v5, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getExpandedTitleMarginEnd()I

    move-result v7

    sub-int/2addr v6, v7

    if-eqz v1, :cond_98

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_82

    goto :goto_b8

    :cond_82
    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getExpandedTitleMarginStart()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_95

    :cond_91
    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_95
    float-to-int v0, v0

    move v6, v0

    goto :goto_b8

    :cond_98
    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    if-eqz v0, :cond_ad

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_b1

    :cond_ad
    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_b1
    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_b8
    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_d1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d1
    :goto_d1
    return-void
.end method
