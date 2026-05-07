.class public final Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;
.super Lcom/android/launcher/views/AdaptiveScreenRotateView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview$Companion;

.field private static final MAX_ROM:I = 0x6

.field private static final NUM_3:I = 0x3

.field public static final PERCENT:F = 0.4f

.field public static final PRESS_ANIMATION_DURATION:J = 0xc8L

.field public static final RELEASE_ANIMATION_DURATION:J = 0x163L

.field public static final SCALE:F = 0.9f


# instance fields
.field private final mCellRect:Landroid/graphics/Rect;

.field private mCellRectColor:I

.field private mColumn:I

.field private mCurrentLayoutConfig:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

.field private mPreviewCellGap:I

.field private mPreviewCellGapLeft:I

.field private mPreviewCellGapTop:I

.field private mPreviewCellHeight:I

.field private mPreviewCellRadius:I

.field private mPreviewCellWidth:I

.field private mPreviewPaddingStart:I

.field private mPreviewPaddingTop:I

.field private mPreviewTextSize:I

.field private mRow:I

.field private mSymbol:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private final mTextRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->Companion:Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/views/AdaptiveScreenRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mCellRect:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mTextRect:Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    sget-object v1, Lcom/android/launcher3/R$styleable;->PreviewItemCellStyle:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x6

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellWidth:I

    iput v2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellHeight:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewPaddingStart:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewPaddingTop:I

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellRadius:I

    const/4 v0, 0x5

    const/16 v2, 0x1e

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewTextSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGap:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f06040f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mCellRectColor:I

    const p2, 0x7f120341

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mSymbol:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPaint:Landroid/graphics/Paint;

    const p3, 0x7f060430

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewTextSize:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {p1}, Lcom/android/launcher/UiConfig;->getCurrentLayoutSettings(Landroid/content/Context;)[I

    move-result-object p2

    const-string p3, "getCurrentLayoutSettings(context)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mCurrentLayoutConfig:[I

    new-instance p2, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070cb8

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p2, p1, p0, p3}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;F)V

    iput-object p2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    return-void
.end method

.method private final drawPreviewCell(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellWidth:I

    iget v2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mColumn:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGap:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInLongSize()Z

    move-result v1

    if-eqz v1, :cond_67

    iget v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mRow:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2f

    iget v2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mColumn:I

    if-ne v2, v1, :cond_2f

    iget v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGap:I

    iput v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGapLeft:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGapTop:I

    goto :goto_54

    :cond_2f
    const/4 v2, 0x4

    const/4 v3, 0x6

    if-ne v0, v2, :cond_42

    iget v2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mColumn:I

    if-ne v2, v3, :cond_42

    iget v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGap:I

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGapLeft:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGapTop:I

    goto :goto_54

    :cond_42
    if-ne v0, v1, :cond_54

    iget v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mColumn:I

    if-ne v0, v3, :cond_54

    iget v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGap:I

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGapLeft:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGapTop:I

    :cond_54
    :goto_54
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellWidth:I

    iget v2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mColumn:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGapLeft:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_6d

    :cond_67
    iget v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGap:I

    iput v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGapLeft:I

    iput v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGapTop:I

    :goto_6d
    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mRow:I

    if-lez v0, :cond_b2

    const/4 v1, 0x0

    move v2, v1

    :goto_7a
    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mColumn:I

    if-lez v4, :cond_ad

    move v5, v1

    :goto_81
    add-int/lit8 v6, v5, 0x1

    iget v7, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellWidth:I

    iget v8, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGapLeft:I

    add-int/2addr v8, v7

    mul-int/2addr v8, v5

    iget v5, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellHeight:I

    iget v9, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGapTop:I

    add-int/2addr v9, v5

    mul-int/2addr v9, v2

    iget-object v10, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mCellRect:Landroid/graphics/Rect;

    add-int/2addr v7, v8

    add-int/2addr v5, v9

    invoke-virtual {v10, v8, v9, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mCellRect:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellRadius:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-lt v6, v4, :cond_ab

    goto :goto_ad

    :cond_ab
    move v5, v6

    goto :goto_81

    :cond_ad
    :goto_ad
    if-lt v3, v0, :cond_b0

    goto :goto_b2

    :cond_b0
    move v2, v3

    goto :goto_7a

    :cond_b2
    :goto_b2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final drawText(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewPaddingTop:I

    iget v2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellHeight:I

    iget v3, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGap:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPreviewCellGap:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mText:Ljava/lang/String;

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->drawPreviewCell(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->onLayout(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setColumnRow(II)V
    .registers 5

    iput p1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mColumn:I

    iput p2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mRow:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mText:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mText:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mTextRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0, p0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mPressFeedbackPreviewWrapper:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->setSelected(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/togglebar/views/ToggleBarLayoutItemPreview;->mColumn:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
