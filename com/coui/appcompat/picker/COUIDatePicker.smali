.class public Lcom/coui/appcompat/picker/COUIDatePicker;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/picker/COUIDatePicker$Format;,
        Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;,
        Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;,
        Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;
    }
.end annotation


# instance fields
.field public E:I

.field public final a:Landroid/widget/LinearLayout;

.field public final b:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public final c:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public final d:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public final e:Ljava/text/DateFormat;

.field public f:I

.field public g:I

.field public h:Landroid/content/Context;

.field public i:Ljava/util/Locale;

.field public j:Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;

.field public k:[Ljava/lang/String;

.field public l:I

.field public m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

.field public n:Ljava/util/Calendar;

.field public o:Ljava/util/Calendar;

.field public p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

.field public q:Z

.field public r:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

.field public s:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

.field public t:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:Ljava/util/Date;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coui/appcompat/picker/COUIDatePicker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiDatePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM/dd/yyyy"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->e:Ljava/text/DateFormat;

    const/4 v5, -0x1

    iput v5, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->f:I

    iput v5, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->g:I

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->q:Z

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iput-object v1, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->h:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/coui/appcompat/picker/COUIDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    sget-object v8, Lcom/support/appcompat/R$styleable;->COUIDatePicker:[I

    invoke-virtual {v1, v2, v8, v3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    sget v9, Lcom/support/appcompat/R$styleable;->COUIDatePicker_spinnerShown:I

    invoke-virtual {v8, v9, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    sget v10, Lcom/support/appcompat/R$styleable;->COUIDatePicker_calendarViewShown:I

    invoke-virtual {v8, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    sget v11, Lcom/support/appcompat/R$styleable;->COUIDatePicker_beginYear:I

    const/16 v12, 0x76c

    invoke-virtual {v8, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    sget v12, Lcom/support/appcompat/R$styleable;->COUIDatePicker_endYear:I

    const/16 v13, 0x834

    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    sget v13, Lcom/support/appcompat/R$styleable;->COUIDatePicker_minDate:I

    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v14, Lcom/support/appcompat/R$styleable;->COUIDatePicker_maxDate:I

    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v6, Lcom/support/appcompat/R$array;->coui_solor_mounth:I

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->k:[Ljava/lang/String;

    sget v6, Lcom/support/appcompat/R$styleable;->COUIDatePicker_calendarTextColor:I

    invoke-virtual {v8, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->u:I

    sget v6, Lcom/support/appcompat/R$styleable;->COUIDatePicker_calendarSelectedTextColor:I

    invoke-virtual {v8, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->v:I

    sget v6, Lcom/support/appcompat/R$layout;->coui_date_picker:I

    sget v15, Lcom/support/appcompat/R$styleable;->COUIDatePicker_couiYearIgnorable:I

    invoke-virtual {v8, v15, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    iput-boolean v15, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->y:Z

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v8, Lcom/support/appcompat/R$styleable;->COUIPickersCommonAttrs:[I

    invoke-virtual {v1, v2, v8, v3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$styleable;->COUIPickersCommonAttrs_couiPickersMaxWidth:I

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->E:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const/4 v3, 0x1

    invoke-virtual {v2, v6, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v2, Lcom/coui/appcompat/picker/COUIDatePicker$1;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$1;-><init>(Lcom/coui/appcompat/picker/COUIDatePicker;)V

    new-instance v3, Lcom/coui/appcompat/picker/COUIDatePicker$2;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$2;-><init>(Lcom/coui/appcompat/picker/COUIDatePicker;)V

    sget v6, Lcom/support/appcompat/R$id;->pickers:I

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    sget v8, Lcom/support/appcompat/R$string;->coui_year:I

    const-string v15, "YEAR"

    invoke-direct {v6, v0, v8, v15}, Lcom/coui/appcompat/picker/COUIDatePicker$Format;-><init>(Lcom/coui/appcompat/picker/COUIDatePicker;ILjava/lang/String;)V

    iput-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->r:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    new-instance v6, Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    sget v8, Lcom/support/appcompat/R$string;->coui_month:I

    const-string v15, "MONTH"

    invoke-direct {v6, v0, v8, v15}, Lcom/coui/appcompat/picker/COUIDatePicker$Format;-><init>(Lcom/coui/appcompat/picker/COUIDatePicker;ILjava/lang/String;)V

    iput-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->s:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    new-instance v6, Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    sget v8, Lcom/support/appcompat/R$string;->coui_day:I

    const-string v15, "DAY"

    invoke-direct {v6, v0, v8, v15}, Lcom/coui/appcompat/picker/COUIDatePicker$Format;-><init>(Lcom/coui/appcompat/picker/COUIDatePicker;ILjava/lang/String;)V

    iput-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->t:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iput-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->z:Ljava/util/Date;

    sget v6, Lcom/support/appcompat/R$id;->day:I

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    invoke-virtual {v6, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    sget v6, Lcom/support/appcompat/R$id;->month:I

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget v15, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->l:I

    add-int/2addr v15, v5

    invoke-virtual {v6, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    invoke-virtual {v6, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    sget v6, Lcom/support/appcompat/R$id;->year:I

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    invoke-virtual {v6, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    iget-boolean v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->y:Z

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setIgnorable(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->g()V

    if-nez v9, :cond_133

    if-nez v10, :cond_133

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUIDatePicker;->setSpinnersShown(Z)V

    goto :goto_139

    :cond_133
    invoke-virtual {v0, v9}, Lcom/coui/appcompat/picker/COUIDatePicker;->setSpinnersShown(Z)V

    invoke-virtual {v0, v10}, Lcom/coui/appcompat/picker/COUIDatePicker;->setCalendarViewShown(Z)V

    :goto_139
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v3, v2, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_163

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v2, v2, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    :try_start_14d
    invoke-virtual {v4, v13}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_154
    .catch Ljava/text/ParseException; {:try_start_14d .. :try_end_154} :catch_156

    const/4 v2, 0x1

    goto :goto_157

    :catch_156
    const/4 v2, 0x0

    :goto_157
    if-nez v2, :cond_161

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v11, v3, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->e(III)V

    goto :goto_16a

    :cond_161
    const/4 v3, 0x0

    goto :goto_16a

    :cond_163
    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v11, v3, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->e(III)V

    :goto_16a
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v2, v2, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/coui/appcompat/picker/COUIDatePicker;->setMinDate(J)V

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v4, v2, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iput-boolean v3, v2, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a0

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v4, v4, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    :try_start_18c
    iget-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->e:Ljava/text/DateFormat;

    invoke-virtual {v6, v14}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_195
    .catch Ljava/text/ParseException; {:try_start_18c .. :try_end_195} :catch_197

    const/4 v4, 0x1

    goto :goto_198

    :catch_197
    const/4 v4, 0x0

    :goto_198
    if-nez v4, :cond_1a5

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v4, v12, v2, v3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->e(III)V

    goto :goto_1a5

    :cond_1a0
    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v4, v12, v2, v3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->e(III)V

    :cond_1a5
    :goto_1a5
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v2, v2, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coui/appcompat/picker/COUIDatePicker;->setMaxDate(J)V

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->f(J)V

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v3

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/coui/appcompat/picker/COUIDatePicker;->e(III)V

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->h()V

    iput-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->j:Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "yyyyMMMMdd"

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1f6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f7

    :cond_1f6
    const/4 v4, 0x0

    :goto_1f7
    iget-object v3, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v7, v4

    :goto_202
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v7, v4, :cond_271

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x4d

    if-eq v4, v6, :cond_244

    const/16 v6, 0x64

    if-eq v4, v6, :cond_22f

    const/16 v6, 0x79

    if-eq v4, v6, :cond_219

    goto :goto_258

    :cond_219
    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_258

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_258

    :cond_22f
    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_258

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_258

    :cond_244
    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_258

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_258
    :goto_258
    iget v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->f:I

    if-ne v4, v5, :cond_265

    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/2addr v4, v5

    iput v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->f:I

    :cond_265
    iget-object v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/2addr v4, v5

    iput v4, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->g:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_202

    :cond_271
    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->m()Z

    move-result v2

    if-eqz v2, :cond_28f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$string;->picker_talkback_tip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v2, v3, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v2, v3, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v2, v3, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    :cond_28f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_selected_background_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->w:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_selected_background_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/picker/COUIDatePicker;->x:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_2b1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_2b1
    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/picker/COUIDatePicker;Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->setDate(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V

    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->i:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->i:Ljava/util/Locale;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->c(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

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
    iput-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

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
    iput-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->c(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->l:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->k:[Ljava/lang/String;

    return-void
.end method

.method private setDate(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->g(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    iget-boolean v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    if-nez v2, :cond_48

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2b

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v5, p0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v4, p0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v3, p0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    goto :goto_48

    :cond_2b
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v3, p0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    :cond_48
    :goto_48
    return-void
.end method

.method public final c(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;
    .registers 3

    if-nez p1, :cond_8

    new-instance p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    return-object p0

    :cond_8
    new-instance p0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    iget-boolean p2, p1, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    if-nez p2, :cond_1b

    iget-object p1, p1, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->f(J)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->g(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V

    :goto_1e
    return-object p0
.end method

.method public final d(Landroid/view/View;II)V
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

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->x:I

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    iget v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->w:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v4, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->x:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->w:I

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

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

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

.method public final e(III)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1, p3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->d(II)V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->b()V

    return-void
.end method

.method public f(III)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    if-ne v0, p1, :cond_1d

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    if-ne v0, p2, :cond_1d

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    if-eq v0, p3, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    if-nez v1, :cond_20

    return-void

    :cond_20
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/picker/COUIDatePicker;->e(III)V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->h()V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->j:Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getYear()I

    move-result p2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getMonth()I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getDayOfMonth()I

    move-result v0

    invoke-interface {p1, p0, p2, p3, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;->onDateChanged(Lcom/coui/appcompat/picker/COUIDatePicker;III)V

    :cond_39
    return-void
.end method

.method public final g()V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerNormalColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->u:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerNormalColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->u:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerNormalColor(I)V

    :cond_18
    iget v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->v:I

    if-eq v0, v1, :cond_2f

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerFocusColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->v:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerFocusColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->v:I

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerFocusColor(I)V

    :cond_2f
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

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result p0

    return p0
.end method

.method public getMaxDate()J
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result p0

    return p0
.end method

.method public getOnDateChangedListener()Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->j:Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;

    return-object p0
.end method

.method public getSpinnersShown()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p0

    return p0
.end method

.method public getYear()I
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result p0

    return p0
.end method

.method public final h()V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->s:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_4e

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_4e

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_48

    move v2, v1

    goto :goto_49

    :cond_48
    move v2, v3

    :goto_49
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_ff

    :cond_4e
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_91

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_91

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_8c

    move v2, v1

    goto :goto_8d

    :cond_8c
    move v2, v3

    :goto_8d
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_ff

    :cond_91
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_e2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_e2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_dd

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_dd

    move v2, v1

    goto :goto_de

    :cond_dd
    move v2, v3

    :goto_de
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_ff

    :cond_e2
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v2, v2, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    :goto_ff
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x5

    if-ne v0, v2, :cond_15e

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_15e

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_138

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_15e

    :cond_138
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_159

    move v3, v1

    :cond_159
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_244

    :cond_15e
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_17a

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_1bc

    :cond_17a
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1bc

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1bc

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_1b7

    move v3, v1

    :cond_1b7
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_244

    :cond_1bc
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_227

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_227

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_227

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_227

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_223

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_223

    move v3, v1

    :cond_223
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_244

    :cond_227
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v2, v2, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v5}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    :goto_244
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->k:[Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->r:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    invoke-virtual {v1, v5}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->t:Lcom/coui/appcompat/picker/COUIDatePicker$Format;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;)V

    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v1

    if-le v1, v0, :cond_2b2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2b2
    return-void
.end method

.method public isEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->q:Z

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

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->E:I

    if-lez v2, :cond_f

    if-le v1, v2, :cond_f

    move v1, v2

    :cond_f
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->b()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->b()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->b()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->d(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->d(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->d(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->f:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->f:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingLeft(I)V

    :cond_61
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->g:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->g:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingRight(I)V

    :cond_7a
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-boolean v1, v0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    if-nez v1, :cond_18

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->h:Landroid/content/Context;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0x14

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_18
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->h:Landroid/content/Context;

    iget-object v0, v0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0x18

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    :goto_26
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    check-cast p1, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;->a:I

    iget v1, p1, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;->b:I

    iget p1, p1, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;->c:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->e(III)V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->h()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 8

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v6, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/picker/COUIDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/coui/appcompat/picker/COUIDatePicker$1;)V

    return-object v6
.end method

.method public setBackground(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCalendarViewShown(Z)V
    .registers 2

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->q:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->q:Z

    return-void
.end method

.method public setFocusColor(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->v:I

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->g()V

    return-void
.end method

.method public setMaxDate(J)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_29

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_29

    return-void

    :cond_29
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    iget-boolean v0, p1, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    if-nez v0, :cond_3c

    iget-object p1, p1, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    :cond_3c
    if-eqz v1, :cond_49

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->o:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->f(J)V

    :cond_49
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->h()V

    return-void
.end method

.method public setMinDate(J)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_29

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->m:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b(I)I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_29

    return-void

    :cond_29
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    iget-boolean v0, p1, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->b:Z

    if-nez v0, :cond_3c

    iget-object p1, p1, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->a:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    :cond_3c
    if-eqz v1, :cond_49

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->p:Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->n:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->f(J)V

    :cond_49
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->h()V

    return-void
.end method

.method public setNormalColor(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->u:I

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->g()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_e
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->d:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_15
    return-void
.end method

.method public setOnDateChangedListener(Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->j:Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;

    return-void
.end method

.method public setSpinnersShown(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
