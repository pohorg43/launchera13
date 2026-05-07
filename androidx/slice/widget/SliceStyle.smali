.class public Landroidx/slice/widget/SliceStyle;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultRowStyleRes:I

.field private final mExpandToAvailableHeight:Z

.field private final mGridAllImagesHeight:I

.field private final mGridBigPicMaxHeight:I

.field private final mGridBigPicMinHeight:I

.field private final mGridBottomPadding:I

.field private final mGridImageTextHeight:I

.field private final mGridMaxHeight:I

.field private final mGridMinHeight:I

.field private final mGridRawImageTextHeight:I

.field private final mGridSubtitleSize:I

.field private final mGridTitleSize:I

.field private final mGridTopPadding:I

.field private final mHeaderSubtitleSize:I

.field private final mHeaderTitleSize:I

.field private final mHideHeaderRow:Z

.field private final mImageCornerRadius:F

.field private final mListLargeHeight:I

.field private final mListMinScrollHeight:I

.field private final mResourceToRowStyle:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/slice/widget/RowStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final mRowInlineRangeHeight:I

.field private final mRowMaxHeight:I

.field private final mRowMinHeight:I

.field private final mRowRangeHeight:I

.field private final mRowSelectionHeight:I

.field private final mRowSingleTextWithRangeHeight:I

.field private final mRowSingleTextWithSelectionHeight:I

.field private mRowStyleFactory:Landroidx/slice/widget/RowStyleFactory;

.field private final mRowTextWithRangeHeight:I

.field private final mRowTextWithSelectionHeight:I

.field private final mSubtitleColor:I

.field private final mSubtitleSize:I

.field private mTintColor:I

.field private final mTitleColor:I

.field private final mTitleSize:I

.field private final mVerticalGridTextPadding:I

.field private final mVerticalHeaderTextPadding:I

.field private final mVerticalTextPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/slice/widget/SliceStyle;->mResourceToRowStyle:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroidx/slice/view/R$styleable;->SliceView:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_17
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_tintColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    if-eq p3, v0, :cond_20

    goto :goto_22

    :cond_20
    iget p3, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    :goto_22
    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_titleColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_subtitleColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerTitleSize:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerSubtitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerTextVerticalPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_titleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_subtitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_textVerticalPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridTitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridSubtitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_inner_padding:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v1, Landroidx/slice/view/R$styleable;->SliceView_gridTextVerticalPadding:I

    int-to-float p3, p3

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridBottomPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_rowStyle:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mDefaultRowStyleRes:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_rowMinHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_max_height:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_rowMaxHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_height:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_rowRangeHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_single_text_height:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_rowRangeSingleTextHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithRangeHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_inline_height:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_rowInlineRangeHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mRowInlineRangeHeight:I

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_expandToAvailableHeight:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/slice/widget/SliceStyle;->mExpandToAvailableHeight:Z

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_hideHeaderRow:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/slice/widget/SliceStyle;->mHideHeaderRow:Z

    iput-object p1, p0, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    sget p3, Landroidx/slice/view/R$styleable;->SliceView_imageCornerRadius:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F
    :try_end_12a
    .catchall {:try_start_17 .. :try_end_12a} :catchall_198

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_multi_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithRangeHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_multi_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithSelectionHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_single_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithSelectionHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_only_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_raw_image_text_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridRawImageTextHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    return-void

    :catchall_198
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private shouldSkipFirstListItem(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getHideHeaderRow()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_23

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_23

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Landroidx/slice/widget/RowContent;

    if-eqz p0, :cond_23

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/widget/RowContent;

    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0
.end method


# virtual methods
.method public getApplyCornerRadiusToLargeImages()Z
    .registers 2

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getExpandToAvailableHeight()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/slice/widget/SliceStyle;->mExpandToAvailableHeight:Z

    return p0
.end method

.method public getGridBottomPadding()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    return p0
.end method

.method public getGridHeight(Landroidx/slice/widget/GridContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .registers 10

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_a

    move p2, v1

    goto :goto_b

    :cond_a
    move p2, v0

    :goto_b
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v2

    if-nez v2, :cond_12

    return v0

    :cond_12
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v2

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_43

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_30

    if-eqz p2, :cond_2d

    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    goto/16 :goto_7f

    :cond_2d
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    goto :goto_7f

    :cond_30
    if-nez v2, :cond_35

    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_7f

    :cond_35
    if-ne v2, v4, :cond_40

    iget-object p2, p0, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    goto :goto_7f

    :cond_40
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    goto :goto_7f

    :cond_43
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getMaxCellLineCount()I

    move-result v3

    if-le v3, v1, :cond_4b

    move v3, v1

    goto :goto_4c

    :cond_4b
    move v3, v0

    :goto_4c
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v5

    if-eqz v2, :cond_58

    const/4 v6, 0x5

    if-ne v2, v6, :cond_56

    goto :goto_58

    :cond_56
    move v6, v0

    goto :goto_59

    :cond_58
    :goto_58
    move v6, v1

    :goto_59
    if-ne v2, v4, :cond_6c

    iget-object p2, p0, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-eqz v3, :cond_66

    const/4 v1, 0x2

    :cond_66
    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mGridRawImageTextHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p2

    move p2, v1

    goto :goto_7f

    :cond_6c
    if-eqz v3, :cond_78

    if-nez p2, :cond_78

    if-eqz v5, :cond_75

    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    goto :goto_7f

    :cond_75
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_7f

    :cond_78
    if-eqz v6, :cond_7d

    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_7f

    :cond_7d
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    :goto_7f
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-virtual {p1}, Landroidx/slice/widget/SliceContent;->getRowIndex()I

    move-result v1

    if-nez v1, :cond_8e

    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    goto :goto_8f

    :cond_8e
    move v1, v0

    :goto_8f
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getIsLastIndex()Z

    move-result p1

    if-eqz p1, :cond_9d

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    :cond_9d
    add-int/2addr p2, v1

    add-int/2addr p2, v0

    return p2
.end method

.method public getGridSubtitleSize()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    return p0
.end method

.method public getGridTitleSize()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    return p0
.end method

.method public getGridTopPadding()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    return p0
.end method

.method public getHeaderSubtitleSize()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    return p0
.end method

.method public getHeaderTitleSize()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    return p0
.end method

.method public getHideHeaderRow()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/slice/widget/SliceStyle;->mHideHeaderRow:Z

    return p0
.end method

.method public getImageCornerRadius()F
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    return p0
.end method

.method public getListHeight(Landroidx/slice/widget/ListContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .registers 10

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    return p0

    :cond_10
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxHeight()I

    move-result v0

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v2

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    if-lez v0, :cond_2e

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2e
    if-lez v0, :cond_32

    move v4, v0

    goto :goto_34

    :cond_32
    iget v4, p0, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    :goto_34
    sub-int v5, v3, v4

    iget v6, p0, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    if-lt v5, v6, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    if-eqz v1, :cond_46

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getExpandToAvailableHeight()Z

    move-result v1

    if-nez v1, :cond_46

    move v3, v4

    goto :goto_4d

    :cond_46
    if-gtz v0, :cond_49

    goto :goto_4d

    :cond_49
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_4d
    if-nez v2, :cond_5b

    invoke-virtual {p0, p1, v3, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Landroidx/slice/widget/DisplayedListItems;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/widget/DisplayedListItems;->getDisplayedItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    :cond_5b
    return v3
.end method

.method public getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Landroidx/slice/widget/DisplayedListItems;
    .registers 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b0

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_b0

    :cond_18
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceStyle;->shouldSkipFirstListItem(Ljava/util/List;)Z

    move-result v1

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    move v5, v4

    :goto_2a
    if-ge v4, v3, :cond_4e

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/widget/SliceContent;

    if-nez v4, :cond_3b

    if-eqz v1, :cond_3b

    goto :goto_4b

    :cond_3b
    invoke-virtual {v6, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v7

    if-lez p2, :cond_47

    add-int v8, v5, v7

    if-le v8, p2, :cond_47

    sub-int/2addr v3, v4

    goto :goto_4f

    :cond_47
    add-int/2addr v5, v7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_4e
    move v3, v2

    :goto_4f
    const/4 v4, 0x1

    if-eqz v1, :cond_54

    move v1, v4

    goto :goto_55

    :cond_54
    const/4 v1, 0x2

    :goto_55
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v6

    if-eqz v6, :cond_97

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v1, :cond_97

    if-lez v3, :cond_97

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v6

    invoke-virtual {v6, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v6

    add-int/2addr v6, v5

    :goto_6c
    if-le v6, p2, :cond_8a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v1, :cond_8a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v7, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    :cond_8a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p0, v1, :cond_97

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_aa

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    new-instance p0, Landroidx/slice/widget/DisplayedListItems;

    invoke-direct {p0, v0, v3}, Landroidx/slice/widget/DisplayedListItems;-><init>(Ljava/util/List;I)V

    return-object p0

    :cond_b0
    :goto_b0
    new-instance p0, Landroidx/slice/widget/DisplayedListItems;

    invoke-direct {p0, v0, v2}, Landroidx/slice/widget/DisplayedListItems;-><init>(Ljava/util/List;I)V

    return-object p0
.end method

.method public getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    move v1, v0

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/widget/SliceContent;

    if-nez v0, :cond_1a

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceStyle;->shouldSkipFirstListItem(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_20

    :cond_1a
    invoke-virtual {v2, p0, p2}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_23
    return v1
.end method

.method public getListItemsToDisplay(Landroidx/slice/widget/ListContent;)Ljava/util/List;
    .registers 3
    .param p1  # Landroidx/slice/widget/ListContent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/widget/ListContent;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceStyle;->shouldSkipFirstListItem(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, p0, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object p1
.end method

.method public getRowHeight(Landroidx/slice/widget/RowContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .registers 5

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxSmallHeight()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxSmallHeight()I

    move-result v0

    goto :goto_d

    :cond_b
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    :goto_d
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    if-nez v1, :cond_21

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v1

    if-nez v1, :cond_21

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_21

    return v0

    :cond_21
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_48

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getStartItem()Landroidx/slice/SliceItem;

    move-result-object p2

    if-nez p2, :cond_45

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result p2

    if-nez p2, :cond_36

    const/4 p1, 0x0

    goto :goto_41

    :cond_36
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result p1

    if-le p1, v1, :cond_3f

    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithRangeHeight:I

    goto :goto_41

    :cond_3f
    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithRangeHeight:I

    :goto_41
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    :goto_43
    add-int/2addr p1, p0

    return p1

    :cond_45
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowInlineRangeHeight:I

    return p0

    :cond_48
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object p2

    if-eqz p2, :cond_5c

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result p1

    if-le p1, v1, :cond_57

    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithSelectionHeight:I

    goto :goto_59

    :cond_57
    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithSelectionHeight:I

    :goto_59
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    goto :goto_43

    :cond_5c
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result p2

    if-gt p2, v1, :cond_6b

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result p1

    if-eqz p1, :cond_69

    goto :goto_6b

    :cond_69
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    :cond_6b
    :goto_6b
    return v0
.end method

.method public getRowInlineRangeHeight()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowInlineRangeHeight:I

    return p0
.end method

.method public getRowMaxHeight()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    return p0
.end method

.method public getRowMinHeight()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    return p0
.end method

.method public getRowRangeHeight()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    return p0
.end method

.method public getRowSelectionHeight()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    return p0
.end method

.method public getRowStyle(Landroidx/slice/SliceItem;)Landroidx/slice/widget/RowStyle;
    .registers 4
    .param p1  # Landroidx/slice/SliceItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mDefaultRowStyleRes:I

    if-eqz p1, :cond_f

    iget-object v1, p0, Landroidx/slice/widget/SliceStyle;->mRowStyleFactory:Landroidx/slice/widget/RowStyleFactory;

    if-eqz v1, :cond_f

    invoke-interface {v1, p1}, Landroidx/slice/widget/RowStyleFactory;->getRowStyleRes(Landroidx/slice/SliceItem;)I

    move-result p1

    if-eqz p1, :cond_f

    move v0, p1

    :cond_f
    if-nez v0, :cond_19

    new-instance p1, Landroidx/slice/widget/RowStyle;

    iget-object v0, p0, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Landroidx/slice/widget/RowStyle;-><init>(Landroid/content/Context;Landroidx/slice/widget/SliceStyle;)V

    return-object p1

    :cond_19
    iget-object p1, p0, Landroidx/slice/widget/SliceStyle;->mResourceToRowStyle:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/widget/RowStyle;

    if-nez p1, :cond_2f

    new-instance p1, Landroidx/slice/widget/RowStyle;

    iget-object v1, p0, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0, p0}, Landroidx/slice/widget/RowStyle;-><init>(Landroid/content/Context;ILandroidx/slice/widget/SliceStyle;)V

    iget-object p0, p0, Landroidx/slice/widget/SliceStyle;->mResourceToRowStyle:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2f
    return-object p1
.end method

.method public getSubtitleColor()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    return p0
.end method

.method public getSubtitleSize()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    return p0
.end method

.method public getTintColor()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    return p0
.end method

.method public getTitleColor()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    return p0
.end method

.method public getTitleSize()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    return p0
.end method

.method public getVerticalGridTextPadding()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    return p0
.end method

.method public getVerticalHeaderTextPadding()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    return p0
.end method

.method public getVerticalTextPadding()I
    .registers 1

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    return p0
.end method

.method public setRowStyleFactory(Landroidx/slice/widget/RowStyleFactory;)V
    .registers 2
    .param p1  # Landroidx/slice/widget/RowStyleFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/slice/widget/SliceStyle;->mRowStyleFactory:Landroidx/slice/widget/RowStyleFactory;

    return-void
.end method

.method public setTintColor(I)V
    .registers 2

    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    return-void
.end method
