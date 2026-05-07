.class public Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LAYOUT:I

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

.field private mClick:Z

.field private mHasNext:Z

.field private mHasPrev:Z

.field private mInit:Z

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthView:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/ImageButton;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDaySelectedListener:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$OnDaySelectedListener;

.field private final mOnPageChangedListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mScroller:Lcom/coui/appcompat/calendar/COUICalendarViewPagerScroller;

.field private final mSelectedDay:Ljava/util/Calendar;

.field private mTempCalendar:Ljava/util/Calendar;

.field private final mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Lcom/support/appcompat/R$layout;->coui_calendar_picker_content_material:I

    sput v0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->DEFAULT_LAYOUT:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->DATE_FORMATTER:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101035d

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMaxDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mHasNext:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mInit:Z

    new-instance v1, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$2;-><init>(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)V

    iput-object v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mOnPageChangedListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    new-instance v1, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$3;-><init>(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)V

    iput-object v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUICalendarView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUICalendarView_android_firstDayOfWeek:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    sget v1, Lcom/support/appcompat/R$styleable;->COUICalendarView_android_minDate:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$styleable;->COUICalendarView_android_maxDate:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$style;->TextAppearance_Material_Widget_Calendar_Month:I

    sget v4, Lcom/support/appcompat/R$style;->TextAppearance_Material_Widget_Calendar_DayOfWeek:I

    sget v5, Lcom/support/appcompat/R$style;->TextAppearance_Material_Widget_Calendar_Day:I

    sget v6, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p1, v6, p4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v6

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    sget v7, Lcom/support/appcompat/R$layout;->coui_calendar_picker_month_item_material:I

    sget v8, Lcom/support/appcompat/R$id;->month_view:I

    invoke-direct {p2, p1, v7, v8}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    invoke-virtual {p2, v3}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->setMonthTextAppearance(I)V

    invoke-virtual {p2, v4}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->setDayOfWeekTextAppearance(I)V

    invoke-virtual {p2, v5}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->setDayTextAppearance(I)V

    invoke-virtual {p2, v6}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->setDaySelectorColor(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->DEFAULT_LAYOUT:I

    invoke-virtual {p1, p2, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    :goto_7c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_8d

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7c

    :cond_8d
    sget p1, Lcom/support/appcompat/R$id;->day_picker_view_pager:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->configViewPager()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_a9

    const/16 p2, 0x76c

    invoke-virtual {p1, p2, p4, v0}, Ljava/util/Calendar;->set(III)V

    :cond_a9
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v2, p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_bc

    const/16 p2, 0x834

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {p1, p2, v2, v3}, Ljava/util/Calendar;->set(III)V

    :cond_bc
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_e5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v5, v0

    move-wide v7, p1

    invoke-static/range {v3 .. v8}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->constrain(JJJ)J

    move-result-wide v2

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->setFirstDayOfWeek(I)V

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->setMinDate(J)V

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->setMaxDate(J)V

    invoke-virtual {p0, v2, v3, p4}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->setDate(JZ)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    new-instance p2, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$1;-><init>(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)V

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->setOnDaySelectedListener(Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$OnDaySelectedListener;)V

    return-void

    :cond_e5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxDate must be >= minDate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$OnDaySelectedListener;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mOnDaySelectedListener:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$OnDaySelectedListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mClick:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mClick:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMonthView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Ljava/util/Calendar;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mNextButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Lcom/coui/appcompat/calendar/COUICalendarViewPagerScroller;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mScroller:Lcom/coui/appcompat/calendar/COUICalendarViewPagerScroller;

    return-object p0
.end method

.method private configViewPager()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mOnPageChangedListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :try_start_e
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Lcom/coui/appcompat/calendar/COUICalendarViewPagerScroller;

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coui/appcompat/calendar/COUICalendarViewPagerScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mScroller:Lcom/coui/appcompat/calendar/COUICalendarViewPagerScroller;

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_31
    return-void
.end method

.method private getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .registers 4

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p2, p0

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, p2

    return v0
.end method

.method private getPositionFromDay(J)I
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->getTempCalendarForTime(J)Ljava/util/Calendar;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/coui/appcompat/calendar/COUIPickerMathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private getTempCalendarForTime(J)Ljava/util/Calendar;
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mTempCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_a

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mTempCalendar:Ljava/util/Calendar;

    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mTempCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_15

    :cond_a
    :try_start_a
    sget-object v1, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_13} :catch_15

    const/4 p0, 0x1

    return p0

    :catch_15
    :cond_15
    :goto_15
    return v0
.end method

.method private setDate(JZZ)V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_13

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    :goto_11
    move v0, v1

    goto :goto_25

    :cond_13
    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_24

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    goto :goto_11

    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->getTempCalendarForTime(J)Ljava/util/Calendar;

    if-nez p4, :cond_2c

    if-eqz v0, :cond_31

    :cond_2c
    iget-object p4, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {p4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_31
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->setClick(Z)V

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->getPositionFromDay(J)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eq p1, p2, :cond_45

    iget-object p2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_45
    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    return-void
.end method

.method private updateButtonVisibility(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    iput-boolean v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mHasPrev:Z

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    invoke-virtual {v2}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt p1, v2, :cond_18

    iget-boolean p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mInit:Z

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :cond_18
    :goto_18
    iput-boolean v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mHasNext:Z

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    if-eqz p1, :cond_29

    iget-boolean v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mHasPrev:Z

    if-eqz v2, :cond_25

    move v2, v1

    goto :goto_26

    :cond_25
    move v2, v0

    :goto_26
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_29
    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_35

    iget-boolean v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mHasNext:Z

    if-eqz v2, :cond_32

    move v0, v1

    :cond_32
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_35
    iput-boolean v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mInit:Z

    return-void
.end method


# virtual methods
.method public getAdapterTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getBoundsForDate(JLandroid/graphics/Rect;)Z
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->getPositionFromDay(J)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p1, p0, p3}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getBoundsForDate(Ljava/util/Calendar;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getCurrentTimeMillis()J
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getCurrentView()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1e

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    invoke-virtual {p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getCurrentView()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-virtual {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_1e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDate()J
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDayOfWeekTextAppearance()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    invoke-virtual {p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getDayOfWeekTextAppearance()I

    move-result p0

    return p0
.end method

.method public getDayTextAppearance()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    invoke-virtual {p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getDayTextAppearance()I

    move-result p0

    return p0
.end method

.method public getFirstDayOfWeek()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    invoke-virtual {p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public getMaxDate()J
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMostVisiblePosition()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mHasNext:Z

    return p0
.end method

.method public hasPre()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mHasPrev:Z

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeightAndState()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRangeChanged()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setClick(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mClick:Z

    return-void
.end method

.method public setDate(J)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->setDate(JZ)V

    return-void
.end method

.method public setDate(JZ)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->setDayOfWeekTextAppearance(I)V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->setDayTextAppearance(I)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mAdapter:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setMinDate(J)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setMonthView(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mMonthView:Landroid/widget/TextView;

    return-void
.end method

.method public setNextButton(Landroid/widget/ImageButton;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDaySelectedListener(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$OnDaySelectedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mOnDaySelectedListener:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$OnDaySelectedListener;

    return-void
.end method

.method public setPosition(I)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setPrevButton(Landroid/widget/ImageButton;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
