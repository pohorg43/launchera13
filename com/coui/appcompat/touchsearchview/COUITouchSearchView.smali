.class public Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$PatternExploreByTouchHelper;,
        Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;,
        Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;
    }
.end annotation


# static fields
.field private static final BG_ALIGN_MIDDLE:I = 0x0

.field private static final BG_ALIGN_RIGHT:I = 0x2

.field private static final DEBUG:Z = false

.field private static final ENABLED:I = 0x0

.field private static final ENABLED_MASK:I = 0x20

.field private static final INVALID_POINTER:I = -0x1

.field private static final MIN_COUNT_RATIO:I = 0x3

.field public static final MIN_SECTIONS_NUM:I = 0x5

.field private static final MIN_SIZE_COUNT:I = 0x5

.field private static final PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field private static final PFLAG_PRESSED:I = 0x4000

.field private static final SEC_WINDOW_SHOW_DELAY_DURATION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "COUITouchSearchView"

.field private static final VIEW_STATE_ACCELERATED:I = 0x40

.field private static final VIEW_STATE_ACTIVATED:I = 0x20

.field private static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field private static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field private static final VIEW_STATE_ENABLED:I = 0x8

.field private static final VIEW_STATE_FOCUSED:I = 0x4

.field private static final VIEW_STATE_HOVERED:I = 0x80

.field private static final VIEW_STATE_IDS:[I

.field private static final VIEW_STATE_PRESSED:I = 0x10

.field private static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static sSTYLEABLELENGTH:I

.field private static sVIEWSETS:[[I

.field private static sVIEWSTATESETS:[[[I


# instance fields
.field private mAccessibilityTouchDownY:F

.field private mActivePointerId:I

.field private mBackgroundAlignMode:I

.field private mBackgroundLeftMargin:I

.field private mBackgroundRightMargin:I

.field private mBackgroundWidth:I

.field private mCOUITouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

.field private mCellHeight:I

.field private mContext:Landroid/content/Context;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultTextSize:I

.field private mDismissTask:Ljava/lang/Runnable;

.field private mDisplayKey:Ljava/lang/CharSequence;

.field private mDot:Ljava/lang/CharSequence;

.field private mEnableAdaptiveVibrator:Z

.field private mExploreByTouchHelper:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$PatternExploreByTouchHelper;

.field private final mFirstAlphaListener:Lm1/g;

.field private mFirstIsCharacter:Z

.field private mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

.field private mFirstLayout:Z

.field private mFirstSpring:Lm1/d;

.field private mFontFace:Landroid/graphics/Typeface;

.field private mFrameChanged:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasMotorVibrator:Z

.field private mHeightNotEnough:Z

.field private mIconState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private mIsAccessibilityEnabled:Z

.field private mItemSpacing:I

.field private mKEYS:[Ljava/lang/String;

.field private mKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

.field private mKeyDrawableHeight:I

.field private mKeyDrawableWidth:I

.field private mKeyIndexAndOriginalIndex:[I

.field private mKeyIndices:I

.field private mKeyPaddingX:I

.field private mKeyPaddingY:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLinearMotorVibrator:Ljava/lang/Object;

.field private mLocationInScreen:[I

.field private mLowVelocityThreshold:I

.field private mMeasurePaint:Landroid/text/TextPaint;

.field private mMidVelocityThreshold:I

.field private mMinHeight:I

.field private mPopupFirstTextHeight:I

.field private mPopupFirstTextView:Landroid/widget/TextView;

.field private mPopupFirstTextWidth:I

.field private mPopupSecondTextHeight:I

.field private mPopupSecondTextViewSize:I

.field private mPopupSecondTextWidth:I

.field private mPopupWinSecondNameMaxHeight:I

.field private mPopupWindowEndGap:I

.field private mPopupWindowEndMargin:I

.field private mPopupWindowFirstKeyTextSize:I

.field private mPopupWindowFirstLocalx:I

.field private mPopupWindowFirstLocaly:I

.field private mPopupWindowFirstTextColor:I

.field private mPopupWindowMinTop:I

.field private mPopupWindowSecondLocalx:I

.field private mPopupWindowSecondLocaly:I

.field private mPositionRect:Landroid/graphics/Rect;

.field private mPreviousIndex:I

.field public mPrivateFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollViewHeight:I

.field private mSecondKeyContainer:Landroid/view/ViewGroup;

.field private mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

.field private mSecondKeyScrollView:Landroid/widget/ScrollView;

.field private mSecondPopupMargin:I

.field private mSecondPopupOffset:I

.field private mSpringSystem:Lm1/b;

.field private mStyle:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTotalItemHeight:I

.field private mTouchPaddingEnd:I

.field private mTouchPaddingStart:I

.field private mTouchSearchActionListener:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;

.field private mTouchSlop:I

.field private mTrackerMaxVelocity:I

.field private mTrackerPeriod:I

.field private mUserTextColor:Landroid/content/res/ColorStateList;

.field private mUserTextSize:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    sput-object v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->VIEW_STATE_IDS:[I

    sget-object v1, Lcom/support/appcompat/R$styleable;->ViewDrawableStates:[I

    array-length v1, v1

    sput v1, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sSTYLEABLELENGTH:I

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ne v2, v1, :cond_73

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    sget v5, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sSTYLEABLELENGTH:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_3c

    sget-object v5, Lcom/support/appcompat/R$styleable;->ViewDrawableStates:[I

    aget v5, v5, v4

    move v7, v3

    :goto_22
    sget-object v8, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->VIEW_STATE_IDS:[I

    array-length v9, v8

    if-ge v7, v9, :cond_39

    aget v9, v8, v7

    if-ne v9, v5, :cond_36

    mul-int/lit8 v9, v4, 0x2

    aput v5, v1, v9

    add-int/2addr v9, v6

    add-int/lit8 v10, v7, 0x1

    aget v8, v8, v10

    aput v8, v1, v9

    :cond_36
    add-int/lit8 v7, v7, 0x2

    goto :goto_22

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_3c
    shl-int v2, v6, v2

    new-array v4, v2, [[[I

    sput-object v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sVIEWSTATESETS:[[[I

    new-array v2, v2, [[I

    sput-object v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sVIEWSETS:[[I

    move v2, v3

    :goto_47
    sget-object v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sVIEWSETS:[[I

    array-length v4, v4

    if-ge v2, v4, :cond_72

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    sget-object v5, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sVIEWSETS:[[I

    new-array v4, v4, [I

    aput-object v4, v5, v2

    move v4, v3

    move v5, v4

    :goto_58
    if-ge v4, v0, :cond_6f

    add-int/lit8 v6, v4, 0x1

    aget v6, v1, v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_6c

    sget-object v6, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sVIEWSETS:[[I

    aget-object v6, v6, v2

    add-int/lit8 v7, v5, 0x1

    aget v8, v1, v4

    aput v8, v6, v5

    move v5, v7

    :cond_6c
    add-int/lit8 v4, v4, 0x2

    goto :goto_58

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_72
    return-void

    :cond_73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VIEW_STATE_IDS array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_7c
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiTouchSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mIconState:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstLayout:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFrameChanged:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mActivePointerId:I

    iput v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_214

    iput-object v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndexAndOriginalIndex:[I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    iput v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPreviousIndex:I

    iput-boolean v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstIsCharacter:Z

    iput-object v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    iput v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDefaultTextSize:I

    iput v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mUserTextSize:I

    iput-object v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTrackerPeriod:I

    const/16 v2, 0x1f40

    iput v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTrackerMaxVelocity:I

    const/16 v2, 0xbb8

    iput v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLowVelocityThreshold:I

    const/16 v2, 0x1770

    iput v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mMidVelocityThreshold:I

    iput-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mEnableAdaptiveVibrator:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHasMotorVibrator:Z

    iput-object v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLinearMotorVibrator:Ljava/lang/Object;

    invoke-static {}, Lm1/h;->d()Lm1/h;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSpringSystem:Lm1/b;

    invoke-virtual {v2}, Lm1/b;->b()Lm1/d;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstSpring:Lm1/d;

    new-instance v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$1;-><init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)V

    iput-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstAlphaListener:Lm1/g;

    new-instance v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$2;-><init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)V

    iput-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDismissTask:Ljava/lang/Runnable;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHandler:Landroid/os/Handler;

    new-array v2, v3, [I

    iput-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLocationInScreen:[I

    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p2, :cond_95

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mStyle:I

    goto :goto_97

    :cond_95
    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mStyle:I

    :goto_97
    sget-object v3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiBackgroundAlignMode:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundAlignMode:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiMarginLeft:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundLeftMargin:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiMarginRigh:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundRightMargin:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinFirstHeight:I

    sget v3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_popup_first_default_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextHeight:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinFirstWidth:I

    sget v3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_popup_first_default_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinSecondHeight:I

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextHeight:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupSecondTextHeight:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinSecondWidth:I

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupSecondTextWidth:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinSecondOffset:I

    sget v3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_popupwin_default_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondPopupOffset:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinSecondMargin:I

    sget v3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_popupwin_second_marginEnd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondPopupMargin:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinMinTop:I

    sget v3, Lcom/support/appcompat/R$integer;->coui_touchsearch_popupwin_default_top_mincoordinate:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowMinTop:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinSecondTextSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_touchsearch_popupwin_second_textsize:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupSecondTextViewSize:I

    sget p3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_popupname_max_height:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWinSecondNameMaxHeight:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinFirstTextSize:I

    sget v3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_popupwin_first_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinFirstTextColor:I

    sget v3, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-static {p1, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstTextColor:I

    iget p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundRightMargin:I

    sget v3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_right_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v3, p3

    iput v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundRightMargin:I

    sget p3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_popupwin_right_margin:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowEndMargin:I

    sget p3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_item_spacing:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mItemSpacing:I

    sget p3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_each_item_height:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCellHeight:I

    sget p3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_touch_end_gap:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowEndGap:I

    iget p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCellHeight:I

    mul-int/lit8 p3, p3, 0x5

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mMinHeight:I

    sget p3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_touch_padding_start:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchPaddingStart:I

    sget p3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_touch_padding_end:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchPaddingEnd:I

    sget p3, Lcom/support/appcompat/R$string;->coui_touchsearch_dot:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDot:Ljava/lang/CharSequence;

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiKeyCollect:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiKeyTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiFirstIsCharacter:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstIsCharacter:Z

    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiAdaptiveVibrator:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mEnableAdaptiveVibrator:Z

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->b()Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHasMotorVibrator:Z

    sget p3, Lcom/support/appcompat/R$drawable;->coui_touch_search_popup_bg:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCOUITouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1ce

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyDrawableWidth:I

    iget-object p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyDrawableHeight:I

    :cond_1ce
    sget p3, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiKeyTextSize:I

    sget v1, Lcom/support/appcompat/R$dimen;->coui_touchsearch_key_textsize:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDefaultTextSize:I

    sget p3, Lcom/support/appcompat/R$dimen;->coui_touchsearch_background_width:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundWidth:I

    iget-boolean p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstIsCharacter:Z

    if-nez p3, :cond_1f1

    sget p3, Lcom/support/appcompat/R$array;->normal_touchsearch_keys:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    goto :goto_1f9

    :cond_1f1
    sget p3, Lcom/support/appcompat/R$array;->special_touchsearch_keys:I

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    :goto_1f9
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mMeasurePaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDefaultTextSize:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->initPopupWindow(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->initAccessibility(Landroid/content/Context;)V

    return-void

    :array_214
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static synthetic access$000(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Lm1/d;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstSpring:Lm1/d;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mUserTextSize:I

    return p0
.end method

.method public static synthetic access$300(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDefaultTextSize:I

    return p0
.end method

.method public static synthetic access$400(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/content/res/ColorStateList;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/content/res/ColorStateList;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/content/res/ColorStateList;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Landroid/graphics/Typeface;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private calDotRadio(II)I
    .registers 4

    add-int/2addr p1, p2

    add-int/lit8 p2, p2, 0x1

    div-int p0, p1, p2

    mul-int/2addr p2, p0

    const/4 v0, 0x2

    if-lt p2, p1, :cond_c

    add-int/lit8 p0, p0, -0x1

    goto :goto_10

    :cond_c
    const/4 p1, 0x3

    if-ne p0, p1, :cond_10

    move p0, v0

    :cond_10
    :goto_10
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private computeVelocityWithTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 p1, 0x3

    if-eq v0, p1, :cond_19

    goto :goto_25

    :cond_10
    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->initVelocityTrackerIfNotExists()V

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_25

    :cond_19
    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->recycleVelocityTracker()V

    goto :goto_25

    :cond_1d
    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->initOrResetVelocityTracker()V

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_25
    return-void
.end method

.method private dealWithAccessibilityTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_eb

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    const/4 p1, 0x3

    if-eq v0, p1, :cond_f

    goto/16 :goto_f9

    :cond_f
    iput-boolean v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mIsAccessibilityEnabled:Z

    goto/16 :goto_f9

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mAccessibilityTouchDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_f9

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5e

    iget-boolean p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHeightNotEnough:Z

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndexAndOriginalIndex:[I

    aget v0, p1, v1

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v3, v2

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_3d

    aget v0, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v1

    :cond_3d
    aget v0, p1, v1

    if-gez v0, :cond_42

    return v1

    :cond_42
    aget p1, p1, v1

    aget-object v0, v2, p1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getKeyIndicesByCharacter(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    goto :goto_88

    :cond_4d
    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    goto :goto_88

    :cond_5e
    iget-boolean p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHeightNotEnough:Z

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndexAndOriginalIndex:[I

    aget v0, p1, v1

    if-lez v0, :cond_6d

    aget v0, p1, v1

    sub-int/2addr v0, v1

    aput v0, p1, v1

    :cond_6d
    aget v0, p1, v1

    if-gez v0, :cond_72

    return v1

    :cond_72
    aget p1, p1, v1

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getKeyIndicesByCharacter(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    goto :goto_88

    :cond_7f
    iget p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    sub-int/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    :goto_88
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    if-ltz v2, :cond_ea

    if-lt v2, v0, :cond_95

    goto :goto_ea

    :cond_95
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->displayChange(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v2}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyPaddingX:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v3}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getTop()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->onKeyChanged(Ljava/lang/CharSequence;II)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchSearchActionListener:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;

    if-eqz v0, :cond_d2

    invoke-interface {v0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    :cond_d2
    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->invalidateTouchBarText()V

    :cond_d5
    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_f9

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->startFirstAnimationToDismiss()V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDismissTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f9

    :cond_ea
    :goto_ea
    return v1

    :cond_eb
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mAccessibilityTouchDownY:F

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLocationInScreen:[I

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->updatePopupWindow()V

    :cond_f9
    :goto_f9
    return v1
.end method

.method private dealWithTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_3a

    if-eq v0, v2, :cond_25

    const/4 v3, 0x2

    if-eq v0, v3, :cond_48

    const/4 v3, 0x3

    if-eq v0, v3, :cond_25

    const/4 v1, 0x6

    if-eq v0, v1, :cond_21

    goto :goto_56

    :cond_21
    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_56

    :cond_25
    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mActivePointerId:I

    const-string p1, ""

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_37

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->startFirstAnimationToDismiss()V

    :cond_37
    iput-boolean v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mIsAccessibilityEnabled:Z

    goto :goto_56

    :cond_3a
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mActivePointerId:I

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLocationInScreen:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->updatePopupWindow()V

    :cond_48
    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->invalidateKey(I)V

    :goto_56
    return v2
.end method

.method private displayChange(Ljava/lang/CharSequence;)Z
    .registers 2

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private getCharacterStartIndex()I
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstIsCharacter:Z

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private getKeyIndices(I)I
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getTop()I

    move-result v0

    if-ge p1, v0, :cond_1a

    goto :goto_55

    :cond_1a
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getTop()I

    move-result v0

    if-le p1, v0, :cond_37

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 v1, p0, -0x1

    goto :goto_55

    :cond_37
    move v0, v1

    :goto_38
    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_55

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget v3, v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchTop:I

    if-lt p1, v3, :cond_52

    iget v2, v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchBottom:I

    if-gt p1, v2, :cond_52

    move v1, v0

    goto :goto_55

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_55
    :goto_55
    return v1
.end method

.method private getKeyIndicesByCharacter(Ljava/lang/String;)I
    .registers 7

    iget-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHeightNotEnough:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_60

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-boolean v3, v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mIsDot:Z

    if-eqz v3, :cond_37

    move v3, v1

    :goto_1b
    iget-object v4, v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mHiddenCharList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    iget-object v4, v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mHiddenCharList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v4, v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    return v0

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_37
    iget-object v2, v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    return v0

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_43
    move v0, v1

    :goto_44
    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_60

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v2, v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    return v0

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_60
    return v1
.end method

.method private getKeyIndicesWithDots(I)V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_6e

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget v4, v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchTop:I

    if-lt p1, v4, :cond_54

    iget v5, v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchBottom:I

    if-gt p1, v5, :cond_54

    iget-boolean v0, v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mIsDot:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_4b

    sub-int/2addr v5, v4

    iget-object v0, v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mHiddenCharList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v5, v0

    iget v0, v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchTop:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v5

    iget-object v0, v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mHiddenCharList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndexAndOriginalIndex:[I

    aput v2, p0, v1

    iget-object v0, v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mHiddenCharList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget p1, p1, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mIndexInOriginalArray:I

    aput p1, p0, v6

    goto :goto_53

    :cond_4b
    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndexAndOriginalIndex:[I

    aput v2, p0, v1

    iget p1, v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mIndexInOriginalArray:I

    aput p1, p0, v6

    :goto_53
    return-void

    :cond_54
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_6b

    iget v3, v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchBottom:I

    if-le p1, v3, :cond_6b

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget v3, v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchTop:I

    if-ge p1, v3, :cond_6b

    return-void

    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_6e
    return-void
.end method

.method private initAccessibility(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$PatternExploreByTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$PatternExploreByTouchHelper;-><init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mExploreByTouchHelper:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$PatternExploreByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mExploreByTouchHelper:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchSlop:I

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_e
    return-void
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .registers 7

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/support/appcompat/R$layout;->coui_touchsearch_poppup_firstkey:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$id;->touchsearch_popup_content_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    int-to-float v3, v3

    const/4 v4, 0x4

    invoke-static {v3, v1, v4}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCOUITouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextHeight:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/support/appcompat/R$layout;->coui_touchsearch_second_name:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$id;->touchsearch_popup_content_scrollview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyScrollView:Landroid/widget/ScrollView;

    sget v1, Lcom/support/appcompat/R$id;->touchsearch_popup_content_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private invalidateKey(I)V
    .registers 6

    iget-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHeightNotEnough:Z

    if-eqz v0, :cond_20

    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getKeyIndicesWithDots(I)V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndexAndOriginalIndex:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    if-ltz v1, :cond_1f

    const/4 v1, 0x1

    aget v2, p1, v1

    if-gez v2, :cond_14

    goto :goto_1f

    :cond_14
    aget v0, p1, v0

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    aget p1, p1, v1

    aget-object p1, v0, p1

    goto :goto_2d

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getKeyIndices(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    if-gez p1, :cond_29

    return-void

    :cond_29
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object p1, v0, p1

    :goto_2d
    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->displayChange(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyPaddingX:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v2}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getTop()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->onKeyChanged(Ljava/lang/CharSequence;II)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchSearchActionListener:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;

    if-eqz v0, :cond_66

    invoke-interface {v0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    :cond_66
    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->invalidateTouchBarText()V

    :cond_69
    return-void
.end method

.method private invalidateTouchBarText()V
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPreviousIndex:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_c

    if-eq v2, v0, :cond_c

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->performFeedback()V

    :cond_c
    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPreviousIndex:I

    if-eq v0, v1, :cond_51

    if-eq v2, v0, :cond_51

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setIconPressed(IZ)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_51

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getIconState(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v1, v1, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_51
    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPreviousIndex:I

    if-eq v2, v0, :cond_66

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    if-eq v1, v0, :cond_66

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_66

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPreviousIndex:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setItemRestore(I)V

    :cond_66
    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPreviousIndex:I

    return-void
.end method

.method private isZoomWindowShown()Z
    .registers 3

    const-string p0, "COUITouchSearchView"

    :try_start_2
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v0

    iget-boolean p0, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowShown:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_23
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception v0

    const-string v1, "getCurrentZoomWindowState error: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_23
    move-exception v0

    const-string v1, "getCurrentZoomWindowState exception: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    const/4 p0, 0x0

    return p0
.end method

.method private onKeyChanged(Ljava/lang/CharSequence;II)V
    .registers 7

    iget-object p2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLocationInScreen:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p3, p1

    iget p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextHeight:I

    sub-int/2addr p3, p1

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p3, p2, Landroid/app/Activity;

    if-eqz p3, :cond_29

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    if-nez p2, :cond_32

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->isZoomWindowShown()Z

    move-result p2

    if-eqz p2, :cond_5e

    :cond_32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string/jumbo v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_5c

    :try_start_4b
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_58

    goto :goto_5d

    :catch_58
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5c
    const/4 p2, -0x1

    :goto_5d
    add-int/2addr p1, p2

    :cond_5e
    iget-object p2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->startFirstAnimationToShow()V

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mActivePointerId:I

    if-ne v1, v2, :cond_1d

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mActivePointerId:I

    :cond_1d
    return-void
.end method

.method private performAdaptiveFeedback()Z
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLinearMotorVibrator:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->a(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLinearMotorVibrator:Ljava/lang/Object;

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    iput-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHasMotorVibrator:Z

    :cond_17
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLinearMotorVibrator:Ljava/lang/Object;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_20

    goto :goto_49

    :cond_20
    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTrackerPeriod:I

    iget v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTrackerMaxVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v5, v0

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mMidVelocityThreshold:I

    if-le v5, v0, :cond_39

    move v4, v2

    goto :goto_3a

    :cond_39
    move v4, v1

    :goto_3a
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLinearMotorVibrator:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/oplus/os/LinearmotorVibrator;

    iget v6, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTrackerMaxVelocity:I

    const/16 v7, 0x640

    const/16 v8, 0x4b0

    invoke-static/range {v3 .. v8}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->d(Lcom/oplus/os/LinearmotorVibrator;IIIII)V

    return v1

    :cond_49
    :goto_49
    return v2
.end method

.method private performFeedback()V
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHasMotorVibrator:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mEnableAdaptiveVibrator:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->performAdaptiveFeedback()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/16 v0, 0x134

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result v0

    if-nez v0, :cond_1c

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1c
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private refreshIcon()V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1c

    sget-object v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sVIEWSTATESETS:[[[I

    sget-object v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sVIEWSETS:[[I

    array-length v5, v4

    new-array v5, v5, [[I

    aput-object v5, v3, v2

    aget-object v3, v3, v2

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1c
    move v2, v1

    :goto_1d
    if-ge v2, v0, :cond_62

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mIconState:Ljava/util/List;

    sget v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sSTYLEABLELENGTH:I

    new-array v4, v4, [I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v3}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_5f

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getIconState(I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v4, v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setColor(I)V

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_62
    return-void
.end method

.method private reset()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mIconState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndexAndOriginalIndex:[I

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v1, p0, v0

    return-void
.end method

.method private setIconPressed(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p2, :cond_11

    or-int/lit16 p2, v0, 0x4000

    goto :goto_13

    :cond_11
    and-int/lit16 p2, v0, -0x4001

    :goto_13
    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setItemRestore(I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setIconPressed(IZ)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v0, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getIconState(I)[I

    move-result-object p1

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private startFirstAnimationToDismiss()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstSpring:Lm1/d;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lm1/d;->e(D)Lm1/d;

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDismissTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startFirstAnimationToShow()V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstLocalx:I

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchPaddingStart:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowEndGap:I

    add-int/2addr v2, v3

    invoke-virtual {v0, p0, v1, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2a

    :cond_1d
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstLocalx:I

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchPaddingStart:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowEndGap:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p0, v1, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstSpring:Lm1/d;

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    invoke-virtual {v0, v1, v2}, Lm1/d;->d(D)Lm1/d;

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstSpring:Lm1/d;

    invoke-virtual {v0, v1, v2}, Lm1/d;->e(D)Lm1/d;

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDismissTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private update()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mMinHeight:I

    if-ge v0, v1, :cond_13

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->reset()V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->updateKeys(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->refreshIcon()V

    return-void
.end method

.method private updateBackGroundBound()V
    .registers 7

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundAlignMode:I

    const/4 v1, 0x2

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundWidth:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    add-int/2addr v2, v0

    goto :goto_24

    :cond_f
    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundRightMargin:I

    sub-int v2, v0, v1

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundWidth:I

    sub-int v0, v2, v0

    goto :goto_24

    :cond_1e
    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundLeftMargin:I

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundWidth:I

    add-int v2, v0, v1

    :goto_24
    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v1, v0, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    return-void
.end method

.method private updateKeys(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mMeasurePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    iget v5, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCellHeight:I

    iget v6, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v4

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v4

    sub-int v4, v2, v4

    iget v6, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCellHeight:I

    mul-int/2addr v4, v6

    iget v7, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mItemSpacing:I

    add-int/lit8 v8, v2, -0x1

    mul-int v9, v7, v8

    add-int/2addr v9, v4

    iget-boolean v4, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstIsCharacter:Z

    if-nez v4, :cond_32

    iget v10, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v9, v10

    :cond_32
    iget-object v10, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    if-eqz v10, :cond_4d

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iget v12, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyDrawableWidth:I

    const/4 v13, 0x2

    invoke-static {v10, v12, v13, v11}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v10

    iget v11, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchPaddingStart:I

    add-int/2addr v10, v11

    iget v12, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchPaddingEnd:I

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyPaddingX:I

    :cond_4d
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-le v9, v1, :cond_18a

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHeightNotEnough:Z

    add-int/2addr v7, v6

    move v6, v4

    :goto_56
    if-ge v6, v2, :cond_5f

    sub-int/2addr v9, v7

    if-gt v9, v1, :cond_5c

    goto :goto_5f

    :cond_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    :cond_5f
    :goto_5f
    sub-int v7, v2, v6

    add-int/lit8 v12, v7, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    if-le v6, v12, :cond_6e

    move v13, v12

    goto :goto_6f

    :cond_6e
    move v13, v6

    :goto_6f
    iget-object v14, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object v8, v14, v8

    const-string v14, "#"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8b

    iget-boolean v8, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstIsCharacter:Z

    if-nez v8, :cond_8b

    rem-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_8b

    if-le v6, v12, :cond_8b

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v13, v13, -0x1

    :cond_8b
    sub-int/2addr v1, v9

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    div-int v2, v9, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v11

    :goto_97
    if-ge v3, v6, :cond_bd

    rem-int v8, v3, v13

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v8, :cond_a8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a8
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v8, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    :cond_bd
    iget-boolean v3, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstIsCharacter:Z

    if-nez v3, :cond_e8

    iget-object v3, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_e8

    new-instance v6, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v8, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-direct {v6, v0, v3, v8}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget v3, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyPaddingX:I

    invoke-virtual {v6, v3}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->setLeft(I)V

    invoke-virtual {v6, v1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->setTop(I)V

    iput v1, v6, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchTop:I

    iget v3, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v3, v1

    iput v3, v6, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchBottom:I

    iget-object v3, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyDrawableHeight:I

    iget v6, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mItemSpacing:I

    add-int/2addr v3, v6

    add-int/2addr v1, v3

    :cond_e8
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v3

    iget-boolean v6, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstIsCharacter:Z

    invoke-direct {v0, v7, v13}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->calDotRadio(II)I

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v12

    :goto_f6
    if-ge v12, v7, :cond_1e8

    new-instance v14, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-direct {v14, v0, v10, v10}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget v10, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyPaddingX:I

    invoke-virtual {v14, v10}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->setLeft(I)V

    add-int v10, v1, v5

    invoke-virtual {v14, v10}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->setTop(I)V

    iget-object v10, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    rem-int/2addr v10, v8

    if-ne v10, v6, :cond_15c

    if-ge v11, v13, :cond_15c

    iput-boolean v4, v14, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mIsDot:Z

    iget-object v10, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v14, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getTop()I

    move-result v10

    iput v10, v14, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchTop:I

    iget v10, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCellHeight:I

    add-int/2addr v10, v1

    iget v15, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mItemSpacing:I

    add-int/2addr v10, v15

    iput v10, v14, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchBottom:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v14, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mHiddenCharList:Ljava/util/List;

    const/4 v10, 0x0

    :goto_132
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v4

    if-ge v10, v15, :cond_159

    new-instance v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-direct {v4, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;)V

    iput v3, v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mIndexInOriginalArray:I

    iget-object v15, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    add-int/lit8 v16, v3, 0x1

    aget-object v3, v15, v3

    iput-object v3, v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    iget-object v3, v14, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mHiddenCharList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x1

    move/from16 v3, v16

    goto :goto_132

    :cond_159
    add-int/lit8 v11, v11, 0x1

    goto :goto_179

    :cond_15c
    iput v3, v14, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mIndexInOriginalArray:I

    iget-object v4, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    add-int/lit8 v10, v3, 0x1

    aget-object v3, v4, v3

    iput-object v3, v14, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getTop()I

    move-result v3

    iput v3, v14, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchTop:I

    invoke-virtual {v14}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getTop()I

    move-result v3

    iget v4, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCellHeight:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mItemSpacing:I

    add-int/2addr v3, v4

    iput v3, v14, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchBottom:I

    move v3, v10

    :goto_179
    iget v4, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCellHeight:I

    iget v10, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mItemSpacing:I

    add-int/2addr v4, v10

    add-int/2addr v1, v4

    iget-object v4, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    const/4 v10, 0x0

    goto/16 :goto_f6

    :cond_18a
    iput-boolean v11, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mHeightNotEnough:Z

    sub-int/2addr v1, v9

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    if-nez v4, :cond_1b2

    iget-object v3, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1b2

    new-instance v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v6, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-direct {v4, v0, v3, v6}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget v3, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyPaddingX:I

    invoke-virtual {v4, v3}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->setLeft(I)V

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->setTop(I)V

    iget-object v3, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyDrawableHeight:I

    iget v4, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mItemSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    :cond_1b2
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v3

    :goto_1b6
    if-ge v3, v2, :cond_1e8

    new-instance v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v6, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    invoke-direct {v4, v0, v7, v6}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget v6, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyPaddingX:I

    invoke-virtual {v4, v6}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->setLeft(I)V

    add-int v6, v1, v5

    invoke-virtual {v4, v6}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->setTop(I)V

    invoke-virtual {v4}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getTop()I

    move-result v6

    iput v6, v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchTop:I

    iget v6, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCellHeight:I

    add-int/2addr v6, v1

    iget v7, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mItemSpacing:I

    add-int/2addr v6, v7

    iput v6, v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTouchBottom:I

    iget-object v6, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCellHeight:I

    iget v6, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mItemSpacing:I

    add-int/2addr v4, v6

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b6

    :cond_1e8
    iput v9, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTotalItemHeight:I

    return-void
.end method

.method private updatePopupWindow()V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLocationInScreen:[I

    aget v0, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowEndMargin:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstLocalx:I

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondPopupMargin:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowSecondLocalx:I

    goto :goto_3c

    :cond_28
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLocationInScreen:[I

    aget v0, v0, v2

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowEndMargin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstLocalx:I

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondPopupMargin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupSecondTextWidth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowSecondLocalx:I

    :goto_3c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLocationInScreen:[I

    aget v1, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstLocaly:I

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_82

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstLocalx:I

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstLocaly:I

    iget v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_96

    :cond_82
    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_96

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_96
    :goto_96
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->updateSecondPopup()V

    :cond_a1
    return-void
.end method

.method private updateSecondPopup()V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowSecondLocalx:I

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupSecondTextWidth:I

    iget p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mScrollViewHeight:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_2e

    :cond_16
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupSecondTextWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mScrollViewHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowSecondLocalx:I

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public closing()V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPreviousIndex:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_16

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    if-eq v2, v0, :cond_16

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPreviousIndex:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setItemRestore(I)V

    :cond_16
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    if-le v2, v1, :cond_25

    if-ge v2, v0, :cond_25

    invoke-direct {p0, v2}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setItemRestore(I)V

    :cond_25
    iput v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPreviousIndex:I

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->startFirstAnimationToDismiss()V

    :cond_32
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3f
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mExploreByTouchHelper:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$PatternExploreByTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public getIconState(I)[I
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_11

    goto :goto_26

    :cond_11
    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mIconState:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->onCreateIconState(II)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v0, v0, -0x401

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_26
    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mIconState:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public getTouchSearchActionListener()Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchSearchActionListener:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;

    return-object p0
.end method

.method public iconStateChanged(ILandroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getIconState(I)[I

    move-result-object p0

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_f
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstSpring:Lm1/d;

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstAlphaListener:Lm1/g;

    invoke-virtual {v0, v1}, Lm1/d;->a(Lm1/g;)Lm1/d;

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstSpring:Lm1/d;

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    invoke-virtual {v0, v1, v2}, Lm1/d;->d(D)Lm1/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->c(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchSearchActionListener:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;->onNameClick(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateIconState(II)[I
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0x4000

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    const/16 v1, 0x10

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_27

    or-int/lit8 v1, v1, 0x8

    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_2f

    or-int/lit8 v1, v1, 0x1

    :cond_2f
    sget-object p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sVIEWSTATESETS:[[[I

    aget-object p0, p0, p1

    aget-object p0, p0, v1

    if-nez p2, :cond_38

    return-object p0

    :cond_38
    if-eqz p0, :cond_43

    array-length p1, p0

    add-int/2addr p1, p2

    new-array p1, p1, [I

    array-length p2, p0

    invoke-static {p0, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_45

    :cond_43
    new-array p1, p2, [I

    :goto_45
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstSpring:Lm1/d;

    iget-object v0, v0, Lm1/d;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    invoke-virtual {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->closing()V

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->e()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mMinHeight:I

    if-ge v0, v1, :cond_16

    return-void

    :cond_16
    iget-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstIsCharacter:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_59

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_59
    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v1

    :goto_63
    if-ge v1, v0, :cond_b8

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v2, v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v3, v3, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v4, v4, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    if-eqz v4, :cond_b5

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v6}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyDrawableWidth:I

    const/4 v8, 0x2

    invoke-static {v7, v5, v8, v6}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v6}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getTop()I

    move-result v6

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v2

    int-to-float v2, v5

    int-to-float v5, v6

    invoke-virtual {p1, v4, v2, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_b8
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstLayout:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFrameChanged:Z

    if-eqz p1, :cond_1e

    :cond_b
    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->updateBackGroundBound()V

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->update()V

    iget-boolean p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstLayout:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_18

    iput-boolean p2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstLayout:Z

    :cond_18
    iget-boolean p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFrameChanged:Z

    if-eqz p1, :cond_1e

    iput-boolean p2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFrameChanged:Z

    :cond_1e
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFrameChanged:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/touchsearchview/COUIAccessibilityUtil;->isTalkbackEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mIsAccessibilityEnabled:Z

    :cond_10
    iget-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mEnableAdaptiveVibrator:Z

    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->computeVelocityWithTouchEvent(Landroid/view/MotionEvent;)V

    :cond_17
    iget-boolean v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_20

    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->dealWithAccessibilityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_20
    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->dealWithTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public refresh()V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUITouchSearchView:[I

    iget v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mStyle:I

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_32

    :cond_1f
    const-string/jumbo v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUITouchSearchView:[I

    iget v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mStyle:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    :cond_32
    :goto_32
    if-eqz v2, :cond_53

    sget v0, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiKeyCollect:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/support/appcompat/R$styleable;->COUITouchSearchView_couiKeyTextColor:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$drawable;->coui_touch_search_popup_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCOUITouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_53
    move v0, v3

    :goto_54
    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9f

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mIconState:Ljava/util/List;

    sget v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sSTYLEABLELENGTH:I

    new-array v2, v2, [I

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9c

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getIconState(I)[I

    move-result-object v2

    iget-object v4, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v2, v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_9c
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_9f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public refreshIconState(ILandroid/graphics/drawable/Drawable;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit16 v0, v0, 0x400

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->iconStateChanged(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundAlignMode(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundAlignMode:I

    return-void
.end method

.method public setBackgroundLeftMargin(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundLeftMargin:I

    return-void
.end method

.method public setBackgroundRightMargin(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mBackgroundRightMargin:I

    return-void
.end method

.method public setCharTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    :cond_4
    return-void
.end method

.method public setCharTextSize(I)V
    .registers 2

    if-eqz p1, :cond_a

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mUserTextSize:I

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mMeasurePaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_a
    return-void
.end method

.method public setDefaultTextColor(Landroid/content/res/ColorStateList;)V
    .registers 6

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    move v0, p1

    :goto_4
    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mIconState:Ljava/util/List;

    sget v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->sSTYLEABLELENGTH:I

    new-array v2, v2, [I

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    invoke-virtual {v1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4d

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getIconState(I)[I

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v2, v2, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDefaultTextSize(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDefaultTextSize:I

    return-void
.end method

.method public setEnableAdaptiveVibrator(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mEnableAdaptiveVibrator:Z

    return-void
.end method

.method public setFirstKeyIsCharacter(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mFirstIsCharacter:Z

    return-void
.end method

.method public setFirstKeyPopupDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_26

    :cond_e
    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;

    iget-object v0, v0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mCOUITouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_26
    return-void
.end method

.method public setFirstKeyPopupWindowSize(II)V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextHeight:I

    if-eq v0, p2, :cond_1e

    :cond_8
    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    iput p2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextHeight:I

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->updatePopupWindow()V

    :cond_1e
    return-void
.end method

.method public setKeyCollectDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setKeys([Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    array-length v0, p1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_12

    goto :goto_1a

    :cond_12
    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->update()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setName([Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    array-length v1, p1

    :goto_6
    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_4f

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextWidth:I

    iget v6, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextHeight:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move v5, v0

    :goto_1c
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_5f

    iget-object v6, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/support/appcompat/R$layout;->coui_touchsearch_popup_content_item:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v7, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupSecondTextViewSize:I

    iget-object v8, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    const/4 v9, 0x4

    int-to-float v7, v7

    invoke-static {v7, v8, v9}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v0, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_4f
    move v4, v0

    :goto_50
    sub-int v5, v2, v1

    if-ge v4, v5, :cond_5f

    iget-object v5, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    sub-int v6, v2, v4

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_5f
    :goto_5f
    if-ge v0, v1, :cond_71

    iget-object v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    :cond_71
    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupSecondTextHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mScrollViewHeight:I

    iget v2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWinSecondNameMaxHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mScrollViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondKeyScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstLocaly:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mScrollViewHeight:I

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextHeight:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLocationInScreen:[I

    aget p1, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondPopupOffset:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mScrollViewHeight:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mLocationInScreen:[I

    aget v1, v1, v3

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    if-ge p1, v1, :cond_bf

    iput v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    goto :goto_c3

    :cond_bf
    if-le p1, v0, :cond_c3

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    :cond_c3
    :goto_c3
    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->updateSecondPopup()V

    return-void
.end method

.method public setPopText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->startFirstAnimationToShow()V

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p2, p2, -0x41

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    :cond_1e
    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length p0, p0

    return-void
.end method

.method public setPopupSecondTextHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupSecondTextHeight:I

    return-void
.end method

.method public setPopupSecondTextViewSize(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupSecondTextViewSize:I

    return-void
.end method

.method public setPopupSecondTextWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupSecondTextWidth:I

    return-void
.end method

.method public setPopupTextView(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->startFirstAnimationToShow()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->setTouchBarSelectedText(Ljava/lang/String;)V

    return-void
.end method

.method public setPopupWindowFirstTextSize(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    if-eq v0, p1, :cond_d

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    iget-object p0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_d
    return-void
.end method

.method public setPopupWindowTextColor(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstTextColor:I

    if-eq v0, p1, :cond_e

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowFirstTextColor:I

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    return-void
.end method

.method public setPopupWindowTopMinCoordinate(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowMinTop:I

    if-eq v0, p1, :cond_6

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupWindowMinTop:I

    :cond_6
    return-void
.end method

.method public setSecondPopupMargin(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondPopupMargin:I

    return-void
.end method

.method public setSecondPopupOffset(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mSecondPopupOffset:I

    return-void
.end method

.method public setSmartShowMode([Ljava/lang/String;[I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    const/4 p2, 0x0

    aget-object p2, p1, p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    array-length p2, p1

    const/4 v0, 0x5

    if-ge p2, v0, :cond_14

    goto :goto_1c

    :cond_14
    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->update()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setTouchBarSelectedText(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mPreviousIndex:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->getKeyIndicesByCharacter(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    iput v0, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    :cond_1c
    iget-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mKeyIndices:I

    if-ltz v1, :cond_2d

    sub-int/2addr p1, v0

    if-le v1, p1, :cond_2a

    goto :goto_2d

    :cond_2a
    invoke-direct {p0}, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->invalidateTouchBarText()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public setTouchSearchActionListener(Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/touchsearchview/COUITouchSearchView;->mTouchSearchActionListener:Lcom/coui/appcompat/touchsearchview/COUITouchSearchView$TouchSearchActionListener;

    return-void
.end method
