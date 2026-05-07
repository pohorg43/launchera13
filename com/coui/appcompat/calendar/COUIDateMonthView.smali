.class public Lcom/coui/appcompat/calendar/COUIDateMonthView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/calendar/COUIDateMonthView$OnMonthChangeListener;,
        Lcom/coui/appcompat/calendar/COUIDateMonthView$OnDayClickListener;,
        Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final CIRCLE_OUT_ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final DAYS_IN_WEEK:I = 0x7

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final DURATION_OF_DISMISS_ANIMATOR:I = 0x96

.field private static final DURATION_OF_SELECT_ANIMATOR:I = 0x118

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6

.field public static final MAX_YEAR:I = 0x834

.field private static final MIN_WEEKS_IN_MONTH:I = 0x5

.field public static final MIN_YEAR:I = 0x76c

.field private static final MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final SELECTED_HIGHLIGHT_ALPHA:I = 0xb0

.field private static final SELECT_ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mActivatedDay:I

.field private mActivatedMonth:I

.field private final mBackgroundColor:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCellWidth:I

.field private mCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCurrentDayStrokeRadius:F

.field private mDayCircleRadius:F

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private mDaySelectRadius:F

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDayPadding:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private final mHintColor:I

.field private mInitColor:I

.field private mIsMaxCol:Z

.field private mIsSelectYear:Z

.field private mIsShowAnimaor:Z

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthWidth:I

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOldMonth:I

.field private mOldSelectDay:I

.field private final mOldSelectorPaint:Landroid/graphics/Paint;

.field private mOnDayClickListener:Lcom/coui/appcompat/calendar/COUIDateMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPaddingStart:I

.field private mPreviouslyHighlightedDay:I

.field private final mPrimaryColor:I

.field private mToday:I

.field private final mTouchHelper:Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->SELECT_ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->CIRCLE_OUT_ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayPaint:Landroid/text/TextPaint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldSelectorPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 p2, 0x7

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mActivatedDay:I

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mActivatedMonth:I

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldSelectDay:I

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldMonth:I

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mToday:I

    const/4 p3, 0x1

    iput p3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mWeekStart:I

    iput p3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mEnabledDayStart:I

    const/16 p4, 0x1f

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mEnabledDayEnd:I

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPreviouslyHighlightedDay:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsTouchHighlighted:Z

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/support/appcompat/R$dimen;->calendar_picker_month_height:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredMonthHeight:I

    sget p4, Lcom/support/appcompat/R$dimen;->calendar_picker_month_padding_start:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPaddingStart:I

    sget p4, Lcom/support/appcompat/R$dimen;->calendar_picker_day_of_week_height:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredDayOfWeekHeight:I

    sget p4, Lcom/support/appcompat/R$dimen;->calendar_picker_day_height:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredDayHeight:I

    sget p4, Lcom/support/appcompat/R$dimen;->calendar_picker_day_min_col_padding:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredDayPadding:I

    sget p4, Lcom/support/appcompat/R$dimen;->calendar_picker_day_width:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredCellWidth:I

    sget p4, Lcom/support/appcompat/R$dimen;->calendar_picker_current_day_radius:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayCircleRadius:F

    sget p4, Lcom/support/appcompat/R$dimen;->calendar_picker_current_day_stroke_radius:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCurrentDayStrokeRadius:F

    iget p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayCircleRadius:F

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaySelectRadius:F

    sget p4, Lcom/support/appcompat/R$attr;->couiColorDisabledNeutral:I

    invoke-static {p1, p4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHintColor:I

    sget p4, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p1, p4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPrimaryColor:I

    sget p4, Lcom/support/appcompat/R$attr;->couiColorBackground:I

    invoke-static {p1, p4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mBackgroundColor:I

    new-instance p1, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;-><init>(Lcom/coui/appcompat/calendar/COUIDateMonthView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mTouchHelper:Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-static {p1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->updateMonthYearLabel()V

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->updateDayOfWeekLabels()V

    invoke-direct {p0, p2}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->initPaints(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/coui/appcompat/calendar/COUIDateMonthView;)Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/coui/appcompat/calendar/COUIDateMonthView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$102(Lcom/coui/appcompat/calendar/COUIDateMonthView;F)F
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaySelectRadius:F

    return p1
.end method

.method public static synthetic access$1100(Lcom/coui/appcompat/calendar/COUIDateMonthView;)I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    return p0
.end method

.method public static synthetic access$1200(Lcom/coui/appcompat/calendar/COUIDateMonthView;)I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    return p0
.end method

.method public static synthetic access$1300(Lcom/coui/appcompat/calendar/COUIDateMonthView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/coui/appcompat/calendar/COUIDateMonthView;)Ljava/text/NumberFormat;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/coui/appcompat/calendar/COUIDateMonthView;)F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayCircleRadius:F

    return p0
.end method

.method public static synthetic access$302(Lcom/coui/appcompat/calendar/COUIDateMonthView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsShowAnimaor:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/coui/appcompat/calendar/COUIDateMonthView;)Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldSelectorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/coui/appcompat/calendar/COUIDateMonthView;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDayAtLocation(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/coui/appcompat/calendar/COUIDateMonthView;)I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaysInMonth:I

    return p0
.end method

.method public static synthetic access$700(Lcom/coui/appcompat/calendar/COUIDateMonthView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->isDayEnabled(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/coui/appcompat/calendar/COUIDateMonthView;)I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mActivatedDay:I

    return p0
.end method

.method public static synthetic access$900(Lcom/coui/appcompat/calendar/COUIDateMonthView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->onDayClicked(I)Z

    move-result p0

    return p0
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/appcompat/R$styleable;->TextAppearance:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_19
    sget v0, Lcom/support/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0, p0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->c(FF)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    sget p0, Lcom/support/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p2, p0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_4d

    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4d
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0
.end method

.method private configAnimator()V
    .registers 5

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCircleInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_50

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCircleInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x118

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCircleInAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/coui/appcompat/calendar/COUIDateMonthView;->SELECT_ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/calendar/COUIDateMonthView$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView$1;-><init>(Lcom/coui/appcompat/calendar/COUIDateMonthView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_58

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCircleOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCircleOutAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/calendar/COUIDateMonthView;->CIRCLE_OUT_ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/calendar/COUIDateMonthView$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView$2;-><init>(Lcom/coui/appcompat/calendar/COUIDateMonthView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_50
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_58
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayPaint:Landroid/text/TextPaint;

    iget v3, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthHeight:I

    iget v4, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    iget v5, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    iget v6, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    invoke-static {v5, v6}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDaysInMonth(II)I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    const/16 v7, 0x23

    if-le v4, v7, :cond_1f

    move v4, v5

    goto :goto_20

    :cond_1f
    move v4, v6

    :goto_20
    iput-boolean v4, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsMaxCol:Z

    iget v7, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHeight:I

    if-eqz v4, :cond_28

    move v4, v6

    goto :goto_2a

    :cond_28
    iget v4, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredDayPadding:I

    :goto_2a
    add-int/2addr v7, v4

    iget v4, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v9

    add-float/2addr v9, v8

    const/high16 v8, 0x40000000  # 2.0f

    div-float/2addr v9, v8

    div-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v3

    iget v3, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mWeekStart:I

    const/4 v10, 0x2

    if-ne v3, v10, :cond_43

    move v3, v5

    goto :goto_44

    :cond_43
    move v3, v6

    :goto_44
    const/4 v10, 0x7

    if-eqz v3, :cond_52

    iget v11, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    if-ne v11, v5, :cond_4f

    iput v10, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    move v11, v5

    goto :goto_53

    :cond_4f
    sub-int/2addr v11, v5

    iput v11, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    :cond_52
    move v11, v6

    :goto_53
    iget v12, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    if-le v12, v5, :cond_a0

    move v12, v6

    move v6, v5

    :goto_59
    iget v13, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    sub-int/2addr v13, v5

    if-gt v6, v13, :cond_a0

    div-int/lit8 v13, v4, 0x2

    add-int/lit8 v14, v6, -0x1

    mul-int/2addr v14, v4

    add-int/2addr v14, v13

    invoke-static/range {p0 .. p0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_6f

    iget v13, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    mul-int/2addr v13, v10

    sub-int v14, v13, v14

    :cond_6f
    invoke-virtual {v2, v12}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget v12, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHintColor:I

    invoke-virtual {v2, v12}, Landroid/text/TextPaint;->setColor(I)V

    iget v12, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    if-nez v12, :cond_81

    const/16 v12, 0xb

    iget v13, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    sub-int/2addr v13, v5

    goto :goto_85

    :cond_81
    add-int/lit8 v12, v12, -0x1

    iget v13, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    :goto_85
    invoke-static {v12, v13}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDaysInMonth(II)I

    move-result v12

    iget v13, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    sub-int/2addr v12, v13

    add-int/2addr v12, v6

    add-int/2addr v12, v5

    iget-object v5, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    int-to-long v12, v12

    invoke-virtual {v5, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    int-to-float v12, v14

    int-to-float v13, v8

    sub-float/2addr v13, v9

    invoke-virtual {v1, v5, v12, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x1

    const/4 v12, 0x0

    goto :goto_59

    :cond_a0
    iget-boolean v5, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsMaxCol:Z

    if-eqz v5, :cond_a6

    const/4 v5, 0x6

    goto :goto_a7

    :cond_a6
    const/4 v5, 0x5

    :goto_a7
    mul-int/2addr v5, v10

    iget v6, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    iget v12, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    invoke-static {v6, v12}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDaysInMonth(II)I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v7, 0x4

    add-int/2addr v6, v8

    iget-boolean v12, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsMaxCol:Z

    if-eqz v12, :cond_bf

    move v13, v7

    goto :goto_c0

    :cond_bf
    const/4 v13, 0x0

    :goto_c0
    add-int/2addr v6, v13

    invoke-direct {v0, v12}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findEndDayOffset(Z)I

    move-result v12

    const/4 v13, 0x1

    :goto_c6
    if-gt v13, v5, :cond_fb

    div-int/lit8 v14, v4, 0x2

    mul-int v15, v4, v12

    add-int/2addr v15, v14

    invoke-static/range {p0 .. p0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_d8

    iget v14, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    mul-int/2addr v14, v10

    sub-int v15, v14, v15

    :cond_d8
    iget v10, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHintColor:I

    invoke-virtual {v2, v10}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v10, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    move v14, v4

    move/from16 v16, v5

    int-to-long v4, v13

    invoke-virtual {v10, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v15

    int-to-float v10, v6

    sub-float/2addr v10, v9

    invoke-virtual {v1, v4, v5, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x7

    if-ne v12, v10, :cond_f5

    add-int/2addr v6, v7

    const/4 v4, 0x0

    move v12, v4

    :cond_f5
    add-int/lit8 v13, v13, 0x1

    move v4, v14

    move/from16 v5, v16

    goto :goto_c6

    :cond_fb
    move v14, v4

    if-eqz v3, :cond_10e

    iget v3, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    if-ne v3, v10, :cond_108

    if-eqz v11, :cond_108

    const/4 v3, 0x1

    iput v3, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    goto :goto_10f

    :cond_108
    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    move v3, v4

    goto :goto_10f

    :cond_10e
    const/4 v3, 0x1

    :goto_10f
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findDayOffset()I

    move-result v4

    move v5, v4

    move v4, v3

    :goto_115
    iget v6, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaysInMonth:I

    if-gt v3, v6, :cond_1d6

    mul-int v6, v14, v5

    div-int/lit8 v10, v14, 0x2

    add-int/2addr v10, v6

    invoke-static/range {p0 .. p0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_12a

    iget v6, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    mul-int/lit8 v6, v6, 0x7

    sub-int v10, v6, v10

    :cond_12a
    invoke-direct {v0, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->isDayEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_133

    const/16 v11, 0x8

    goto :goto_134

    :cond_133
    const/4 v11, 0x0

    :goto_134
    iget v12, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mActivatedDay:I

    if-ne v12, v3, :cond_13d

    iget-boolean v12, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsSelectYear:Z

    if-eqz v12, :cond_13d

    goto :goto_13e

    :cond_13d
    const/4 v4, 0x0

    :goto_13e
    iget v12, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldSelectDay:I

    if-ne v12, v3, :cond_14e

    iget v12, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mActivatedMonth:I

    iget v13, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldMonth:I

    if-ne v12, v13, :cond_14e

    iget-boolean v12, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsShowAnimaor:Z

    if-eqz v12, :cond_14e

    const/4 v12, 0x1

    goto :goto_14f

    :cond_14e
    const/4 v12, 0x0

    :goto_14f
    iget v13, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    if-ne v13, v3, :cond_155

    const/4 v13, 0x1

    goto :goto_156

    :cond_155
    const/4 v13, 0x0

    :goto_156
    if-eqz v4, :cond_16d

    or-int/lit8 v11, v11, 0x20

    if-eqz v13, :cond_15f

    iget-object v6, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    goto :goto_161

    :cond_15f
    iget-object v6, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    :goto_161
    int-to-float v12, v10

    int-to-float v13, v8

    iget v15, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaySelectRadius:F

    const/high16 v16, 0x40000000  # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v1, v12, v13, v15, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_18e

    :cond_16d
    const/high16 v15, 0x40000000  # 2.0f

    if-eqz v13, :cond_180

    or-int/lit8 v11, v11, 0x10

    if-eqz v6, :cond_18e

    int-to-float v6, v10

    int-to-float v12, v8

    iget v13, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayCircleRadius:F

    div-float/2addr v13, v15

    iget-object v15, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v12, v13, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_18e

    :cond_180
    if-eqz v12, :cond_18e

    if-eqz v6, :cond_18e

    int-to-float v6, v10

    int-to-float v12, v8

    iget v13, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayCircleRadius:F

    div-float/2addr v13, v15

    iget-object v15, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v12, v13, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_18e
    :goto_18e
    iget v6, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mToday:I

    if-ne v6, v3, :cond_194

    const/4 v6, 0x1

    goto :goto_195

    :cond_194
    const/4 v6, 0x0

    :goto_195
    if-eqz v6, :cond_1ae

    if-nez v4, :cond_1ae

    iget v4, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPrimaryColor:I

    iget-object v6, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v10

    int-to-float v11, v8

    iget v12, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayCircleRadius:F

    const/high16 v13, 0x40000000  # 2.0f

    div-float/2addr v12, v13

    iget-object v13, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    goto :goto_1ba

    :cond_1ae
    invoke-static {v11}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->getViewState(I)[I

    move-result-object v4

    iget-object v6, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    const/4 v11, 0x0

    invoke-virtual {v6, v4, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v6, v11

    :goto_1ba
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v4, v0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    int-to-long v11, v3

    invoke-virtual {v4, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    int-to-float v10, v10

    int-to-float v11, v8

    sub-float/2addr v11, v9

    invoke-virtual {v1, v4, v10, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x7

    if-ne v5, v4, :cond_1d1

    add-int/2addr v8, v7

    move v5, v6

    :cond_1d1
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto/16 :goto_115

    :cond_1d6
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthHeight:I

    iget v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekHeight:I

    iget v3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v5, v4

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v5, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    const/4 v1, 0x0

    :goto_18
    const/4 v4, 0x7

    if-ge v1, v4, :cond_38

    mul-int v6, v3, v1

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v6

    invoke-static {p0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2b

    iget v6, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    mul-int/2addr v6, v4

    sub-int v7, v6, v7

    :cond_2b
    iget-object v4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v4, v4, v1

    int-to-float v6, v7

    int-to-float v7, v2

    sub-float/2addr v7, v5

    invoke-virtual {p1, v4, v6, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_38
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPaddingStart:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    add-float/2addr v2, v1

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private ensureFocusedDay()V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_d

    iput v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    return-void

    :cond_d
    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_14

    iput v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    return-void

    :cond_14
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .registers 4

    const/4 v0, 0x3

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    if-nez v1, :cond_12

    return v0

    :cond_12
    div-int/2addr p1, v1

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->constrain(III)I

    move-result p1

    invoke-static {p0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_23

    rsub-int/lit8 p0, p1, 0x7

    add-int/lit8 p1, p0, -0x1

    :cond_23
    return p1
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthHeight:I

    iget v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHeight:I

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    add-float/2addr v0, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v0, v3

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    int-to-float p1, p1

    int-to-float v1, v3

    sub-float/2addr v1, v0

    sub-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    int-to-float v0, v2

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findDayOffset()I

    move-result v0

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaysInMonth:I

    add-int/2addr v0, p0

    div-int/lit8 p0, v0, 0x7

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    move v0, v1

    :goto_3d
    sub-int/2addr p0, v0

    invoke-static {p1, v1, p0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private findDayOffset()I
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mWeekStart:I

    sub-int v1, v0, p0

    if-ge v0, p0, :cond_a

    add-int/lit8 v1, v1, 0x7

    :cond_a
    return v1
.end method

.method private findEndDayOffset(Z)I
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDaysInMonth(II)I

    move-result v0

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_11

    const/4 p0, 0x6

    goto :goto_12

    :cond_11
    const/4 p0, 0x5

    :goto_12
    const/4 p1, 0x7

    mul-int/2addr p0, p1

    sub-int/2addr p0, v0

    if-le p0, p1, :cond_1e

    add-int/lit8 p0, p0, -0xe

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    :cond_1e
    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private getDayAtLocation(II)I
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    const/16 v0, -0x64

    if-ltz p1, :cond_48

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    if-lt p1, v1, :cond_10

    goto :goto_48

    :cond_10
    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthHeight:I

    iget v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    if-lt p2, v1, :cond_48

    iget v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPaddedHeight:I

    if-lt p2, v2, :cond_21

    goto :goto_48

    :cond_21
    invoke-static {p0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    mul-int/lit8 v0, v0, 0x7

    sub-int p1, v0, p1

    :cond_2d
    sub-int/2addr p2, v1

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHeight:I

    iget-boolean v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsMaxCol:Z

    if-eqz v1, :cond_36

    const/4 v1, 0x0

    goto :goto_38

    :cond_36
    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredDayPadding:I

    :goto_38
    add-int/2addr v0, v1

    div-int/2addr p2, v0

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    div-int/2addr p1, v0

    mul-int/lit8 p2, p2, 0x7

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findDayOffset()I

    move-result p0

    sub-int/2addr p2, p0

    return p2

    :cond_48
    :goto_48
    return v0
.end method

.method private static getDaysInMonth(II)I
    .registers 2

    packed-switch p0, :pswitch_data_1c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b  #0x3, 0x5, 0x8, 0xa
    const/16 p0, 0x1e

    return p0

    :pswitch_e  #0x1
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_15

    const/16 p0, 0x1d

    goto :goto_17

    :cond_15
    const/16 p0, 0x1c

    :goto_17
    return p0

    :pswitch_18  #0x0, 0x2, 0x4, 0x6, 0x7, 0x9, 0xb
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_e  #00000001
        :pswitch_18  #00000002
        :pswitch_b  #00000003
        :pswitch_18  #00000004
        :pswitch_b  #00000005
        :pswitch_18  #00000006
        :pswitch_18  #00000007
        :pswitch_b  #00000008
        :pswitch_18  #00000009
        :pswitch_b  #0000000a
        :pswitch_18  #0000000b
    .end packed-switch
.end method

.method private initPaints(Landroid/content/res/Resources;)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget v0, Lcom/support/appcompat/R$string;->calendar_picker_month_typeface:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$string;->calendar_picker_day_of_week_typeface:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$string;->calendar_picker_day_typeface:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->calendar_picker_month_text_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/support/appcompat/R$dimen;->calendar_picker_day_of_week_text_size:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/support/appcompat/R$dimen;->calendar_picker_day_text_size:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v3, v5}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->c(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v4, v5}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->c(FF)F

    move-result v4

    float-to-int v4, v4

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p1, v5}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->c(FF)F

    move-result p1

    float-to-int p1, p1

    iget-object v5, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v5, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v3, v4

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldSelectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCirclePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCurrentDayStrokeRadius:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->configAnimator()V

    return-void
.end method

.method private isDayEnabled(I)Z
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_a

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mEnabledDayEnd:I

    if-gt p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isFirstDayOfWeek(I)Z
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findDayOffset()I

    move-result p0

    add-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private isLastDayOfWeek(I)Z
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findDayOffset()I

    move-result p0

    add-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private isValidDayOfMonth(I)Z
    .registers 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaysInMonth:I

    if-gt p1, p0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isValidDayOfWeek(I)Z
    .registers 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x7

    if-gt p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isValidMonth(I)Z
    .registers 2

    if-ltz p0, :cond_8

    const/16 v0, 0xb

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private moveOneDay(Z)Z
    .registers 4

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->ensureFocusedDay()V

    const/4 v0, 0x1

    if-eqz p1, :cond_18

    iget p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->isLastDayOfWeek(I)Z

    move-result p1

    if-nez p1, :cond_28

    iget p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaysInMonth:I

    if-ge p1, v1, :cond_28

    add-int/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    goto :goto_29

    :cond_18
    iget p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->isFirstDayOfWeek(I)Z

    move-result p1

    if-nez p1, :cond_28

    iget p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    if-le p1, v0, :cond_28

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method private onDayClicked(I)Z
    .registers 9

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mActivatedDay:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsShowAnimaor:Z

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOnDayClickListener:Lcom/coui/appcompat/calendar/COUIDateMonthView$OnDayClickListener;

    if-eqz v2, :cond_7e

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    if-gtz p1, :cond_35

    iget v4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    if-lez v4, :cond_27

    iget v3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v4, v0

    invoke-static {v4, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDaysInMonth(II)I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/Calendar;->set(III)V

    goto :goto_66

    :cond_27
    iget v5, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    add-int/lit8 v6, v5, -0x1

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDaysInMonth(II)I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v2, v6, v3, v4}, Ljava/util/Calendar;->set(III)V

    goto :goto_66

    :cond_35
    iget v4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    iget v5, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    invoke-static {v4, v5}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDaysInMonth(II)I

    move-result v4

    if-le p1, v4, :cond_5f

    iget v4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    if-ge v4, v3, :cond_51

    iget v3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    add-int/lit8 v5, v4, 0x1

    invoke-static {v4, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDaysInMonth(II)I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/Calendar;->set(III)V

    goto :goto_66

    :cond_51
    iget v3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDaysInMonth(II)I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v5, v1, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_66

    :cond_5f
    iget v3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    iget v4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    invoke-virtual {v2, v3, v4, p1}, Ljava/util/Calendar;->set(III)V

    :goto_66
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x76c

    if-lt v3, v4, :cond_7d

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x834

    if-le v3, v4, :cond_77

    goto :goto_7d

    :cond_77
    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOnDayClickListener:Lcom/coui/appcompat/calendar/COUIDateMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v2}, Lcom/coui/appcompat/calendar/COUIDateMonthView$OnDayClickListener;->onDayClick(Lcom/coui/appcompat/calendar/COUIDateMonthView;Ljava/util/Calendar;)V

    goto :goto_7e

    :cond_7d
    :goto_7d
    return v1

    :cond_7e
    :goto_7e
    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mTouchHelper:Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v0
.end method

.method private sameDay(ILjava/util/Calendar;)Z
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1a

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p0, v0, :cond_1a

    const/4 p0, 0x5

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p1, p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private updateDayOfWeekLabels()V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_7
    const/16 v3, 0x8

    if-ge v2, v3, :cond_17

    const/16 v3, 0x32

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    const/4 v2, 0x0

    :goto_18
    const/4 v3, 0x7

    if-ge v2, v3, :cond_2d

    iget-object v4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v5, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mWeekStart:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v1

    rem-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2d
    return-void
.end method

.method private updateMonthYearLabel()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mTouchHelper:Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public getBoundsForDay(ILandroid/graphics/Rect;)Z
    .registers 9

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findDayOffset()I

    move-result v2

    add-int/2addr p1, v2

    rem-int/lit8 v2, p1, 0x7

    iget v3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    invoke-static {p0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v2, v0

    mul-int/2addr v2, v3

    sub-int/2addr v4, v2

    goto :goto_2c

    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    mul-int/2addr v2, v3

    add-int/2addr v4, v2

    :goto_2c
    div-int/lit8 p1, p1, 0x7

    iget v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHeight:I

    iget-boolean v5, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsMaxCol:Z

    if-eqz v5, :cond_35

    goto :goto_37

    :cond_35
    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredDayPadding:I

    :goto_37
    add-int/2addr v2, v1

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthHeight:I

    iget v5, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v1

    mul-int/2addr p1, v2

    add-int/2addr p1, p0

    add-int/2addr v3, v4

    add-int/2addr v2, p1

    invoke-virtual {p2, v4, p1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getCellWidth()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    return p0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    if-lez v0, :cond_8

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_b

    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_b
    return-void
.end method

.method public getMonthHeight()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthHeight:I

    return p0
.end method

.method public getMonthWidth()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthWidth:I

    return p0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeMillis()J
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->drawDays(Landroid/graphics/Canvas;)V

    neg-int p0, v0

    int-to-float p0, p0

    neg-int v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-nez p2, :cond_10

    iget-boolean p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsTouchHighlighted:Z

    if-nez p1, :cond_10

    iget p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPreviouslyHighlightedDay:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_10
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 9

    if-eqz p1, :cond_5f

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findDayOffset()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq p2, v1, :cond_49

    const/16 v1, 0x21

    if-eq p2, v1, :cond_33

    const/16 v1, 0x42

    if-eq p2, v1, :cond_25

    const/16 v1, 0x82

    if-eq p2, v1, :cond_18

    goto :goto_59

    :cond_18
    invoke-direct {p0, p3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    if-ge v1, v2, :cond_22

    add-int/lit8 v1, v1, 0x7

    :cond_22
    iput v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    goto :goto_59

    :cond_25
    invoke-direct {p0, p3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_30

    :cond_2c
    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    :goto_30
    iput v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    goto :goto_59

    :cond_33
    invoke-direct {p0, p3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaysInMonth:I

    add-int v4, v0, v3

    div-int/lit8 v4, v4, 0x7

    sub-int/2addr v1, v0

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    if-le v4, v3, :cond_46

    add-int/lit8 v4, v4, -0x7

    :cond_46
    iput v4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    goto :goto_59

    :cond_49
    invoke-direct {p0, p3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaysInMonth:I

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    :goto_59
    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->ensureFocusedDay()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5f
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_63

    const/16 v1, 0x42

    if-eq v0, v1, :cond_5a

    const/4 v1, 0x7

    packed-switch v0, :pswitch_data_9a

    goto/16 :goto_8f

    :pswitch_14  #0x16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-static {p0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->moveOneDay(Z)Z

    move-result v2

    goto/16 :goto_8f

    :pswitch_25  #0x15
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-static {p0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->moveOneDay(Z)Z

    move-result v2

    goto :goto_8f

    :pswitch_34  #0x14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->ensureFocusedDay()V

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    iget v4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaysInMonth:I

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    goto :goto_58

    :pswitch_48  #0x13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->ensureFocusedDay()V

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    if-le v0, v1, :cond_8f

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    :goto_58
    move v2, v3

    goto :goto_8f

    :cond_5a
    :pswitch_5a  #0x17
    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8f

    invoke-direct {p0, v0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->onDayClicked(I)Z

    return v3

    :cond_63
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 v0, 0x2

    goto :goto_74

    :cond_6b
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_73

    move v0, v3

    goto :goto_74

    :cond_73
    move v0, v2

    :goto_74
    if-eqz v0, :cond_8f

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v4, p0

    :cond_7b
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_89

    if-eq v4, p0, :cond_89

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v1, :cond_7b

    :cond_89
    if-eqz v4, :cond_8f

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_8f
    :goto_8f
    if-eqz v2, :cond_95

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    :cond_95
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_9a
    .packed-switch 0x13
        :pswitch_48  #00000013
        :pswitch_34  #00000014
        :pswitch_25  #00000015
        :pswitch_14  #00000016
        :pswitch_5a  #00000017
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p4, p3

    sub-int/2addr p5, v0

    sub-int/2addr p4, p1

    sub-int/2addr p5, p2

    iget p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPaddedWidth:I

    if-eq p4, p1, :cond_54

    iget p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPaddedHeight:I

    if-eq p5, p1, :cond_54

    if-ltz p4, :cond_54

    if-gez p5, :cond_26

    goto :goto_54

    :cond_26
    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPaddedWidth:I

    iput p5, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPaddedHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, v0

    int-to-float p2, p5

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthHeight:I

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    iget-object p3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthYearLabel:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthWidth:I

    iget p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredDayOfWeekHeight:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekHeight:I

    iget p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredDayHeight:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHeight:I

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mTouchHelper:Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_54
    :goto_54
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredMonthHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCellWidth:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v2, -0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_33

    if-eq p1, v4, :cond_21

    const/4 v5, 0x2

    if-eq p1, v5, :cond_33

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2a

    goto :goto_49

    :cond_21
    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDayAtLocation(II)I

    move-result p1

    if-eq p1, v2, :cond_2a

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->onDayClicked(I)Z

    :cond_2a
    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    iput-boolean v3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsTouchHighlighted:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_49

    :cond_33
    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDayAtLocation(II)I

    move-result v0

    iput-boolean v4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsTouchHighlighted:Z

    iget v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    if-eq v1, v0, :cond_44

    iput v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mHighlightedDay:I

    iput v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mPreviouslyHighlightedDay:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_44
    if-nez p1, :cond_49

    if-ne v0, v2, :cond_49

    return v3

    :cond_49
    :goto_49
    return v4
.end method

.method public setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->getViewState(I)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDaySelectorColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v0, 0xb0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_a

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3

    invoke-static {p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mWeekStart:I

    goto :goto_11

    :cond_9
    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mWeekStart:I

    :goto_11
    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->updateDayOfWeekLabels()V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mTouchHelper:Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMonthParams(IIIIIIZ)V
    .registers 8

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mActivatedDay:I

    invoke-static {p2}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->isValidMonth(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    :cond_a
    iput p3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    iput-boolean p7, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsSelectYear:Z

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    iget p3, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCalendar:Ljava/util/Calendar;

    iget p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDayOfWeekStart:I

    invoke-static {p4}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->isValidDayOfWeek(I)Z

    move-result p1

    if-eqz p1, :cond_36

    iput p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mWeekStart:I

    goto :goto_3e

    :cond_36
    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mWeekStart:I

    :goto_3e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, -0x1

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mToday:I

    iget p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonth:I

    iget p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    invoke-static {p2, p4}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getDaysInMonth(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaysInMonth:I

    const/4 p2, 0x0

    :cond_50
    :goto_50
    iget p4, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaysInMonth:I

    if-ge p2, p4, :cond_5f

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->sameDay(ILjava/util/Calendar;)Z

    move-result p4

    if-eqz p4, :cond_50

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mToday:I

    goto :goto_50

    :cond_5f
    invoke-static {p5, p3, p4}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mEnabledDayStart:I

    iget p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mDaysInMonth:I

    invoke-static {p6, p1, p2}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mEnabledDayEnd:I

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->updateMonthYearLabel()V

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->updateDayOfWeekLabels()V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mTouchHelper:Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMonthTextAlpha(I)V
    .registers 10

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mInitColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_66

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v4, v2, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x101009e

    aput v7, v6, v3

    aput-object v6, v4, v3

    new-array v6, v3, [I

    aput-object v6, v4, v5

    new-array v2, v2, [I

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    aput v1, v2, v3

    aput v0, v2, v5

    invoke-direct {p1, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_66
    return-void
.end method

.method public setMonthTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mInitColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOldDay(II)V
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mActivatedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    if-ne v0, p1, :cond_8

    goto :goto_c

    :cond_8
    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldSelectDay:I

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOldMonth:I

    :cond_c
    :goto_c
    return-void
.end method

.method public setOnDayClickListener(Lcom/coui/appcompat/calendar/COUIDateMonthView$OnDayClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mOnDayClickListener:Lcom/coui/appcompat/calendar/COUIDateMonthView$OnDayClickListener;

    return-void
.end method

.method public setSelectedDay(III)V
    .registers 4

    iput p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mActivatedDay:I

    iput p2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mActivatedMonth:I

    iget p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mYear:I

    if-ne p1, p3, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-boolean p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mIsSelectYear:Z

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mTouchHelper:Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;->mCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
