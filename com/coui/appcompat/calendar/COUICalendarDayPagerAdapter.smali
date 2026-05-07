.class public Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$OnDaySelectedListener;,
        Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MONTHS_IN_YEAR:I = 0xc


# instance fields
.field private mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private final mCalendarViewId:I

.field private mCount:I

.field private mCurrentViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/calendar/COUIDateMonthView;",
            ">;"
        }
    .end annotation
.end field

.field private mDayHighlightColor:Landroid/content/res/ColorStateList;

.field private mDayOfWeekTextAppearance:I

.field private mDaySelectorColor:I

.field private mDayTextAppearance:I

.field private mFirstDayOfWeek:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthTextAppearance:I

.field private final mOnDayClickListener:Lcom/coui/appcompat/calendar/COUIDateMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$OnDaySelectedListener;

.field private mSelectedDay:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3  # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    new-instance v0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$1;-><init>(Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;)V

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mOnDayClickListener:Lcom/coui/appcompat/calendar/COUIDateMonthView$OnDayClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mLayoutResId:I

    iput p3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCalendarViewId:I

    const/4 p2, 0x1

    new-array p2, p2, [I

    const p3, 0x101042c

    const/4 v0, 0x0

    aput p3, p2, v0

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$000(Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;)Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$OnDaySelectedListener;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mOnDaySelectedListener:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$OnDaySelectedListener;

    return-object p0
.end method

.method private getMonthForPosition(I)I
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0xc

    return p0
.end method

.method private getPositionForDay(Ljava/util/Calendar;)I
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p1, p0

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, p1

    return v1
.end method

.method private getYearForPosition(I)I
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xc

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget-object p3, p3, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getBoundsForDate(Ljava/util/Calendar;Landroid/graphics/Rect;)Z
    .registers 5

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getCount()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCount:I

    return p0
.end method

.method public getCurrentView()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/calendar/COUIDateMonthView;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDayOfWeekTextAppearance()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mDayOfWeekTextAppearance:I

    return p0
.end method

.method public getDayTextAppearance()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mDayTextAppearance:I

    return p0
.end method

.method public getFirstDayOfWeek()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mFirstDayOfWeek:I

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget p0, p1, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->position:I

    return p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getMonthYearLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getView(I)Lcom/coui/appcompat/calendar/COUIDateMonthView;
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le p1, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    return-object p0
.end method

.method public getView(Ljava/lang/Object;)Lcom/coui/appcompat/calendar/COUIDateMonthView;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    check-cast p1, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget-object p0, p1, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 15

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCalendarViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/calendar/COUIDateMonthView;

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mOnDayClickListener:Lcom/coui/appcompat/calendar/COUIDateMonthView$OnDayClickListener;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setOnDayClickListener(Lcom/coui/appcompat/calendar/COUIDateMonthView$OnDayClickListener;)V

    iget v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMonthTextAppearance:I

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setMonthTextAppearance(I)V

    iget v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mDayOfWeekTextAppearance:I

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setDayOfWeekTextAppearance(I)V

    iget v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mDayTextAppearance:I

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setDayTextAppearance(I)V

    iget v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mDaySelectorColor:I

    if-eqz v3, :cond_2c

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setDaySelectorColor(I)V

    :cond_2c
    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_33

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    :cond_33
    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_44

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    :cond_44
    invoke-direct {p0, p2}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getMonthForPosition(I)I

    move-result v5

    invoke-direct {p0, p2}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getYearForPosition(I)I

    move-result v6

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v4, 0x5

    const/4 v7, 0x2

    if-eqz v3, :cond_5f

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v5, :cond_5f

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_60

    :cond_5f
    const/4 v3, -0x1

    :goto_60
    move v8, v3

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v5, :cond_7a

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v6, :cond_7a

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v10, v3

    goto :goto_7b

    :cond_7a
    move v10, v9

    :goto_7b
    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v5, :cond_92

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v6, :cond_92

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_94

    :cond_92
    const/16 v3, 0x1f

    :goto_94
    move v11, v3

    iget v7, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mFirstDayOfWeek:I

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    if-eqz v3, :cond_a2

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v6, v3, :cond_a2

    move v2, v9

    :cond_a2
    move-object v3, v1

    move v4, v8

    move v8, v10

    move v9, v11

    move v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setMonthParams(IIIIIIZ)V

    new-instance v2, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    invoke-direct {v2, p2, v0, v1}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Lcom/coui/appcompat/calendar/COUIDateMonthView;)V

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    check-cast p2, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget-object p0, p2, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->container:Landroid/view/View;

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mDayOfWeekTextAppearance:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDaySelectorColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mDaySelectorColor:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mDayTextAppearance:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 5

    iput p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mFirstDayOfWeek:I

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget-object v2, v2, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setFirstDayOfWeek(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setMonthTextAppearance(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMonthTextAppearance:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnDaySelectedListener(Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$OnDaySelectedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mOnDaySelectedListener:Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$OnDaySelectedListener;

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    add-int/lit8 p3, p2, -0x1

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget-object p1, p1, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget-object p3, p3, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget-object p3, p3, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget-object p1, p1, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCurrentViewList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 6
    .param p1  # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p1, v0

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mCount:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .registers 12

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->getPositionForDay(Ljava/util/Calendar;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt v0, v4, :cond_30

    add-int/lit8 v5, v0, -0x1

    :goto_11
    add-int/lit8 v6, v0, 0x1

    if-gt v5, v6, :cond_30

    iget-object v6, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    if-eqz v6, :cond_2d

    iget-object v6, v6, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    const/4 v7, -0x1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setSelectedDay(III)V

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_30
    if-ltz v1, :cond_5f

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;

    if-eqz v0, :cond_5f

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, v0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v2, v6, v4}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setSelectedDay(III)V

    iget-object v0, v0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$ViewHolder;->calendar:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->setOldDay(II)V

    :cond_5f
    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;->mSelectedDay:Ljava/util/Calendar;

    return-void
.end method
