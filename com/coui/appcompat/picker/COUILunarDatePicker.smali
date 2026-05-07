.class public Lcom/coui/appcompat/picker/COUILunarDatePicker;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;,
        Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;,
        Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field public static final p:[Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/util/Calendar;

.field public static s:Ljava/util/Calendar;


# instance fields
.field public final a:Landroid/widget/LinearLayout;

.field public final b:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public final c:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public final d:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public e:Ljava/util/Locale;

.field public f:Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;

.field public g:[Ljava/lang/String;

.field public h:I

.field public i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

.field public j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    const-class v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;

    const-string/jumbo v1, "一"

    const-string/jumbo v2, "二"

    const-string/jumbo v3, "三"

    const-string/jumbo v4, "四"

    const-string/jumbo v5, "五"

    const-string/jumbo v6, "六"

    const-string/jumbo v7, "七"

    const-string/jumbo v8, "八"

    const-string/jumbo v9, "九"

    const-string/jumbo v10, "十"

    const-string/jumbo v11, "十一"

    const-string/jumbo v12, "十二"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->p:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    sget-object v1, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    const/16 v2, 0x776

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    sget-object v7, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    const/16 v8, 0x7f4

    const/16 v9, 0xb

    const/16 v10, 0x1f

    const/16 v11, 0x17

    const/16 v12, 0x3b

    invoke-virtual/range {v7 .. v12}, Ljava/util/Calendar;->set(IIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiDatePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xc

    iput v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->h:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->m:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUILunarDatePicker:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$styleable;->COUILunarDatePicker_couiYearIgnorable:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->n:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUIPickersCommonAttrs:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPickersCommonAttrs_couiPickersMaxWidth:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->o:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget p2, Lcom/support/appcompat/R$layout;->coui_lunar_date_picker:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/support/appcompat/R$array;->coui_lunar_month:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->g:[Ljava/lang/String;

    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    invoke-virtual {p3, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$string;->coui_lunar_leap_string:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->q:Ljava/lang/String;

    new-instance p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;-><init>(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V

    new-instance p3, Lcom/coui/appcompat/picker/COUILunarDatePicker$2;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$2;-><init>(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V

    sget v3, Lcom/support/appcompat/R$id;->pickers:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->a:Landroid/widget/LinearLayout;

    sget v3, Lcom/support/appcompat/R$id;->day:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    invoke-virtual {v3, p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    invoke-virtual {v3, p3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    sget v6, Lcom/support/appcompat/R$id;->month:I

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v6, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget v7, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->h:I

    sub-int/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v7, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->g:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    invoke-virtual {v6, p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    invoke-virtual {v6, p3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    sget v7, Lcom/support/appcompat/R$id;->year:I

    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v7, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v7, v4, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    invoke-virtual {v7, p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    invoke-virtual {v7, p3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    iget-boolean p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->n:Z

    invoke-virtual {v7, p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setIgnorable(Z)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setSpinnersShown(Z)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setCalendarViewShown(Z)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    iget-object p3, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->clear()V

    iput v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b:I

    iput v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c:I

    iput v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d:I

    iput v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e:I

    iput v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->f:I

    iput-boolean v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/16 p3, 0x776

    invoke-virtual {p2, p3, v2, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d(III)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setMinDate(J)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    iget-object p3, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->clear()V

    iput v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b:I

    iput v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c:I

    iput v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d:I

    iput v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e:I

    iput v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->f:I

    iput-boolean v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    iget-object p3, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/16 v4, 0x7f4

    invoke-virtual {p3, v1, v4}, Ljava/util/Calendar;->set(II)V

    iget-object p3, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/4 v4, 0x2

    const/16 v5, 0xb

    invoke-virtual {p3, v4, v5}, Ljava/util/Calendar;->set(II)V

    iget-object p3, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/4 v8, 0x5

    const/16 v9, 0x1f

    invoke-virtual {p3, v8, v9}, Ljava/util/Calendar;->set(II)V

    iget-object p3, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/16 v9, 0x17

    invoke-virtual {p3, v5, v9}, Ljava/util/Calendar;->set(II)V

    iget-object p3, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    const/16 v5, 0x3b

    invoke-virtual {p3, v0, v5}, Ljava/util/Calendar;->set(II)V

    iput-boolean v2, p2, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setMaxDate(J)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {p2, v9, v10}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e(J)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p2, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p3, v4}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, v8}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v2, p2, p3, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d(III)V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b()V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->f()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->f:Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;

    invoke-virtual {v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->m()Z

    move-result p2

    if-eqz p2, :cond_16d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$string;->picker_talkback_tip:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v7, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    iput-object p2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    iput-object p2, v3, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    :cond_16d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_selected_background_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_selected_background_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->l:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_18e

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_18e
    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/picker/COUILunarDatePicker;Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setDate(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V

    return-void
.end method

.method public static d(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p0

    invoke-static {v1, v3, p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->a(III)[I

    move-result-object p0

    const/4 v1, 0x0

    aget v1, p0, v1

    aget v0, p0, v0

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    const-string v3, ""

    if-lez v0, :cond_79

    const/high16 v4, -0x80000000

    const-string/jumbo v5, "月"

    if-eq v1, v4, :cond_56

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "年"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_3b

    sget-object v3, Lcom/coui/appcompat/picker/COUILunarDatePicker;->q:Ljava/lang/String;

    :cond_3b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->p:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_79

    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_5f

    sget-object v3, Lcom/coui/appcompat/picker/COUILunarDatePicker;->q:Ljava/lang/String;

    :cond_5f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->p:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_79
    :goto_79
    return-object v3
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->e:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->e:Ljava/util/Locale;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    if-nez v0, :cond_1c

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_28

    :cond_1c
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object v0, v2

    :goto_28
    sput-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    if-nez v0, :cond_33

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_3f

    :cond_33
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object v0, v2

    :goto_3f
    sput-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    return-void
.end method

.method private setDate(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->f(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    sget-object v1, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    iget-boolean v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e(J)V

    goto :goto_29

    :cond_1a
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e(J)V

    :cond_29
    :goto_29
    return-void
.end method

.method public final c(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;
    .registers 3

    if-nez p1, :cond_8

    new-instance p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    return-object p0

    :cond_8
    new-instance p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    iget-boolean p2, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    if-nez p2, :cond_19

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->c()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e(J)V

    goto :goto_1c

    :cond_19
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->f(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V

    :goto_1c
    return-object p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->l:I

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    iget v3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->k:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->l:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->k:I

    int-to-float v5, v2

    add-float/2addr v5, v0

    int-to-float v6, v2

    int-to-float v8, v2

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final e(Landroid/view/View;II)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v2, v1}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p3, p0, v0}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final f()V
    .registers 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v1

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v5, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v5

    invoke-static {v1, v3, v5}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->a(III)[I

    move-result-object v3

    const/4 v5, 0x0

    aget v7, v3, v5

    invoke-static {v7}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->f(I)I

    move-result v7

    aget v8, v3, v2

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-static {v9}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_30

    :goto_2d
    add-int/lit8 v8, v8, -0x1

    goto :goto_40

    :cond_30
    if-ge v8, v7, :cond_35

    if-eqz v7, :cond_35

    goto :goto_2d

    :cond_35
    if-ne v8, v7, :cond_40

    sget-object v10, Lcom/coui/appcompat/picker/COUILunarDatePicker;->q:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_40

    goto :goto_2d

    :cond_40
    :goto_40
    const/high16 v10, -0x80000000

    if-ne v1, v10, :cond_4b

    const/4 v11, 0x3

    aget v11, v3, v11

    if-nez v11, :cond_4b

    add-int/lit8 v8, v8, 0xc

    :cond_4b
    const/16 v11, 0xd

    const/16 v12, 0x18

    const/16 v13, 0xc

    if-ne v1, v10, :cond_56

    iput v12, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->h:I

    goto :goto_5e

    :cond_56
    if-eqz v7, :cond_5c

    iput v11, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->h:I

    move v14, v2

    goto :goto_5f

    :cond_5c
    iput v13, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->h:I

    :goto_5e
    move v14, v5

    :goto_5f
    aget v15, v3, v5

    aget v6, v3, v2

    invoke-static {v15, v6}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->d(II)I

    move-result v6

    if-eqz v7, :cond_79

    if-ne v8, v7, :cond_79

    sget-object v15, Lcom/coui/appcompat/picker/COUILunarDatePicker;->q:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_79

    aget v6, v3, v5

    invoke-static {v6}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->e(I)I

    move-result v6

    :cond_79
    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object v15, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    iget-boolean v11, v9, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    if-nez v11, :cond_93

    iget-object v11, v9, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_91

    iget-object v9, v9, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v9, v15}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_93

    :cond_91
    move v9, v2

    goto :goto_94

    :cond_93
    move v9, v5

    :goto_94
    const/4 v11, 0x0

    if-eqz v9, :cond_c6

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v9, v11}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v15, v3, v4

    invoke-virtual {v9, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v9, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v11}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->h:I

    sub-int/2addr v9, v2

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_139

    :cond_c6
    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object v15, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    iget-boolean v13, v9, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    if-nez v13, :cond_e0

    iget-object v13, v9, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v13, v15}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_de

    iget-object v9, v9, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v9, v15}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e0

    :cond_de
    move v9, v2

    goto :goto_e1

    :cond_e0
    move v9, v5

    :goto_e1
    if-eqz v9, :cond_10e

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v11}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v9, v3, v4

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v11}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_139

    :cond_10e
    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v9, v11}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v9, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v11}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->h:I

    sub-int/2addr v9, v2

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    :goto_139
    iget v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->h:I

    new-array v9, v6, [Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/String;

    if-ne v1, v10, :cond_16b

    move v1, v5

    :goto_142
    if-ge v1, v12, :cond_1cd

    const/16 v6, 0xc

    if-ge v1, v6, :cond_14f

    iget-object v7, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->g:[Ljava/lang/String;

    aget-object v7, v7, v1

    aput-object v7, v9, v1

    goto :goto_168

    :cond_14f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/coui/appcompat/picker/COUILunarDatePicker;->q:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->g:[Ljava/lang/String;

    add-int/lit8 v11, v1, -0xc

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v1

    :goto_168
    add-int/lit8 v1, v1, 0x1

    goto :goto_142

    :cond_16b
    if-eqz v14, :cond_1b7

    move v1, v5

    :goto_16e
    if-ge v1, v7, :cond_179

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->g:[Ljava/lang/String;

    aget-object v9, v9, v1

    aput-object v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16e

    :cond_179
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/coui/appcompat/picker/COUILunarDatePicker;->q:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->g:[Ljava/lang/String;

    add-int/lit8 v11, v7, -0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    add-int/2addr v1, v2

    const/16 v7, 0xd

    :goto_195
    if-ge v1, v7, :cond_1a2

    iget-object v9, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->g:[Ljava/lang/String;

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    aput-object v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_195

    :cond_1a2
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result v1

    iget-object v7, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v6, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    goto :goto_1cd

    :cond_1b7
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->g:[Ljava/lang/String;

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result v6

    iget-object v7, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    :cond_1cd
    :goto_1cd
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v9}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result v1

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result v6

    sub-int v7, v1, v6

    add-int/2addr v7, v2

    new-array v7, v7, [Ljava/lang/String;

    move v9, v6

    :goto_1e4
    if-gt v9, v1, :cond_1f1

    sub-int v10, v9, v6

    invoke-static {v9}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->b(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e4

    :cond_1f1
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    sget-object v1, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sget-object v6, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v2

    sget-object v7, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v1, v6, v7}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->a(III)[I

    move-result-object v1

    sget-object v6, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sget-object v7, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v6, v7, v7}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->a(III)[I

    move-result-object v6

    iget-object v7, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v1, v1, v5

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v6, v6, v5

    invoke-virtual {v1, v6}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v2, v3, v5

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    aget v1, v3, v4

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCalendarViewShown()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getDayOfMonth()I
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p0

    return p0
.end method

.method public getLeapMonth()I
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p0

    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->f(I)I

    move-result p0

    return p0
.end method

.method public getLunarDate()[I
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p0

    invoke-static {v0, v2, p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->a(III)[I

    move-result-object p0

    return-object p0
.end method

.method public getMaxDate()J
    .registers 3

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p0

    return p0
.end method

.method public getOnDateChangedListener()Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->f:Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;

    return-object p0
.end method

.method public getSpinnersShown()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p0

    return p0
.end method

.method public getYear()I
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->m:Z

    return p0
.end method

.method public isLayoutRtl()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->o:I

    if-lez v2, :cond_f

    if-le v1, v2, :cond_f

    move v1, v2

    :cond_f
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->b()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->b()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->b()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->e(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->e(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->e(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v3, :cond_66

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingLeft(I)V

    :cond_66
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p1, :cond_7b

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingRight(I)V

    :cond_7b
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    check-cast p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;->a:I

    iget v1, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;->b:I

    iget p1, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;->c:I

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v2, v0, v1, p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->d(III)V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b()V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->f()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 8

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v6, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/picker/COUILunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/coui/appcompat/picker/COUILunarDatePicker$1;)V

    return-object v6
.end method

.method public setCalendarViewShown(Z)V
    .registers 2

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->m:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->m:Z

    return-void
.end method

.method public setMaxDate(J)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v0

    sget-object v3, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v0, v3, :cond_69

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v0

    sget-object v4, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v0, v4, :cond_69

    const-string p1, "setMaxDate failed!:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p2, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "<->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUILunarDatePicker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_69
    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object p2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    iget-boolean v0, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    if-nez v0, :cond_7c

    iget-object p1, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    :cond_7c
    if-eqz v1, :cond_89

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object p2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->s:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e(J)V

    :cond_89
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->f()V

    return-void
.end method

.method public setMinDate(J)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v0

    sget-object v3, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v0, v3, :cond_69

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result v0

    sget-object v4, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v0, v4, :cond_69

    const-string p1, "setMinDate failed!:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p2, v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "<->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->i:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->b(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUILunarDatePicker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_69
    sget-object v0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object p2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    iget-boolean v0, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->g:Z

    if-nez v0, :cond_7c

    iget-object p1, p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    :cond_7c
    if-eqz v1, :cond_89

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->j:Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    sget-object p2, Lcom/coui/appcompat/picker/COUILunarDatePicker;->r:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->e(J)V

    :cond_89
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->f()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_e
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_15
    return-void
.end method

.method public setOnDateChangedListener(Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->f:Lcom/coui/appcompat/picker/COUILunarDatePicker$OnDateChangedListener;

    return-void
.end method

.method public setSpinnersShown(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
