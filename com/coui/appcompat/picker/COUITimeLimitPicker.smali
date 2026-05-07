.class public Lcom/coui/appcompat/picker/COUITimeLimitPicker;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;,
        Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field public static final u:Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;


# instance fields
.field public final a:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public final b:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public final c:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public final d:Landroid/widget/Button;

.field public final e:[Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Landroid/widget/LinearLayout;

.field public i:Z

.field public j:Z

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Z

.field public n:Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;

.field public o:Ljava/util/Calendar;

.field public p:Ljava/util/Locale;

.field public q:I

.field public r:I

.field public s:Landroid/content/Context;

.field public t:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    new-instance v0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$1;

    invoke-direct {v0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->u:Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->f:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->m:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->setCurrentLocale(Ljava/util/Locale;)V

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIPickersCommonAttrs:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPickersCommonAttrs_couiPickersMaxWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->t:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    sget p3, Lcom/support/appcompat/R$layout;->coui_time_limit_picker:I

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p2, Lcom/support/appcompat/R$id;->coui_timepicker_minute_text:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->k:Landroid/widget/TextView;

    sget p2, Lcom/support/appcompat/R$id;->coui_timepicker_hour_text:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->l:Landroid/widget/TextView;

    sget p2, Lcom/support/appcompat/R$id;->hour:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance p3, Lcom/coui/appcompat/picker/COUITimeLimitPicker$2;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$2;-><init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    new-instance p3, Lcom/coui/appcompat/picker/COUITimeLimitPicker$3;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$3;-><init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/support/appcompat/R$string;->coui_hour_abbreviation:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setUnitText(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->k:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object p3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->l:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    sget p3, Lcom/support/appcompat/R$id;->time_pickers:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    sget p3, Lcom/support/appcompat/R$id;->minute:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object p3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p3}, Lcom/coui/appcompat/picker/COUINumberPicker;->t()V

    invoke-virtual {p3, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    const/16 v2, 0x3b

    invoke-virtual {p3, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$string;->coui_minute_abbreviation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setUnitText(Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p3, v2, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    new-instance v2, Lcom/coui/appcompat/picker/COUITimeLimitPicker$4;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$4;-><init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V

    invoke-virtual {p3, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    new-instance v2, Lcom/coui/appcompat/picker/COUITimeLimitPicker$5;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$5;-><init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V

    invoke-virtual {p3, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$array;->coui_time_picker_ampm:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->e:[Ljava/lang/String;

    sget v3, Lcom/support/appcompat/R$id;->amPm:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/Button;

    const/4 v5, 0x0

    if-eqz v4, :cond_e5

    iput-object v5, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->d:Landroid/widget/Button;

    new-instance v2, Lcom/coui/appcompat/picker/COUITimeLimitPicker$6;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$6;-><init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_104

    :cond_e5
    iput-object v5, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->d:Landroid/widget/Button;

    check-cast v3, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    new-instance v2, Lcom/coui/appcompat/picker/COUITimeLimitPicker$7;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$7;-><init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    new-instance v2, Lcom/coui/appcompat/picker/COUITimeLimitPicker$8;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$8;-><init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    :goto_104
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c()V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b()V

    sget-object v2, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->u:Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->setOnTimeChangedListener(Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->o:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->o:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->setCurrentMinute(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_136

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->setEnabled(Z)V

    :cond_136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "hm"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15c

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v1, :cond_15c

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_15c
    invoke-virtual {p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->m()Z

    move-result v1

    if-eqz v1, :cond_1a0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$string;->picker_talkback_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/support/appcompat/R$string;->coui_hour:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/support/appcompat/R$string;->coui_minute:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p2, :cond_1a0

    iput-object v1, p2, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    :cond_1a0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_selected_background_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->q:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_selected_background_horizontal_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->r:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->s:Landroid/content/Context;

    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->p:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->p:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->o:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->n:Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;->a(Lcom/coui/appcompat/picker/COUITimeLimitPicker;II)V

    :cond_17
    return-void
.end method

.method public final b()V
    .registers 5

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->i:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_34

    :cond_e
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->d:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_34

    :cond_14
    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->j:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_34

    :cond_26
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->d:Landroid/widget/Button;

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->e:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->d:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_34
    return-void
.end method

.method public final c()V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->t()V

    goto :goto_24

    :cond_18
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    :goto_24
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->r:I

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    iget v3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->q:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v4, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->r:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->q:I

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

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getBaseline()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v0

    iget-boolean v1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->i:Z

    if-eqz v1, :cond_f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_f
    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->j:Z

    if-eqz p0, :cond_1a

    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1a
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->m:Z

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

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->t:I

    if-lez v2, :cond_f

    if-le v1, v2, :cond_f

    move v1, v2

    :cond_f
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->f:I

    const/4 v3, 0x0

    :goto_17
    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_78

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v5, :cond_75

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_75

    iget v5, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->f:I

    if-ne v5, v2, :cond_35

    iput v3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->f:I

    :cond_35
    iput v3, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->g:I

    move-object v5, v4

    check-cast v5, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->b()V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v6

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v6

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v6

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p1, v7, v6}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v7

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p2, v8, v5}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_78
    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_88

    iget p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->f:I

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->g:I

    iput v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->f:I

    iput p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->g:I

    :cond_88
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->f:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p1, :cond_a1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->f:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingLeft(I)V

    :cond_a1
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->g:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p1, :cond_ba

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->h:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->g:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingRight(I)V

    :cond_ba
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->j:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->e:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_12

    :cond_d
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->e:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_12
    iget-boolean v1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->i:Z

    if-eqz v1, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->s:Landroid/content/Context;

    sget v2, Lcom/support/appcompat/R$string;->coui_hour:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->s:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$string;->coui_minute:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_76

    :cond_48
    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->s:Landroid/content/Context;

    sget v2, Lcom/support/appcompat/R$string;->coui_hour:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->s:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$string;->coui_minute:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_76
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget p1, p1, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/coui/appcompat/picker/COUITimeLimitPicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/coui/appcompat/picker/COUITimeLimitPicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 4

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_11

    goto :goto_4c

    :cond_11
    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->i:Z

    if-nez v0, :cond_40

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_30

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->j:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3d

    :cond_30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->j:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b()V

    :cond_40
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 3
    .param p1  # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->m:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1f

    :cond_1a
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1f
    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->m:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->i:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->i:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b()V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_e
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_15
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->n:Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;

    return-void
.end method

.method public setRowNumber(I)V
    .registers 4

    if-gtz p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v1, :cond_1c

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerRowNumber(I)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerRowNumber(I)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->c:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setPickerRowNumber(I)V

    :cond_1c
    return-void
.end method

.method public setTextVisibility(Z)V
    .registers 3

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->k:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a

    :cond_e
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->k:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1a
    return-void
.end method
