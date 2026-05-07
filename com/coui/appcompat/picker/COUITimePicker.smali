.class public Lcom/coui/appcompat/picker/COUITimePicker;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/picker/COUITimePicker$Format;,
        Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;
    }
.end annotation


# static fields
.field public static final synthetic I:I


# instance fields
.field public E:I

.field public F:I

.field public G:I

.field public H:Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

.field public a:[Ljava/lang/String;

.field public b:Ljava/util/Calendar;

.field public c:Ljava/util/Calendar;

.field public d:Ljava/util/Calendar;

.field public e:Ljava/text/SimpleDateFormat;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:J

.field public k:Ljava/util/Date;

.field public l:Landroid/content/Context;

.field public m:[Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public r:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public s:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public t:Lcom/coui/appcompat/picker/COUINumberPicker;

.field public u:Landroid/widget/LinearLayout;

.field public v:I

.field public w:I

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Lcom/coui/appcompat/picker/COUITimePicker$Format;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUITimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUITimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->i:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->v:I

    const-string v1, ""

    iput-object v1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->y:Ljava/lang/String;

    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->E:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->F:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIPickersCommonAttrs:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPickersCommonAttrs_couiPickersMaxWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->G:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->l:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$array;->coui_time_picker_ampm:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->n:[Ljava/lang/String;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->l:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$string;->coui_time_picker_today:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->o:Ljava/lang/String;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->l:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$string;->coui_time_picker_day:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->p:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->c:Ljava/util/Calendar;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->f:I

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->g:I

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->h:I

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy MMM dd"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->p:Ljava/lang/String;

    const-string v4, " E"

    invoke-static {v2, v3, v4}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->e:Ljava/text/SimpleDateFormat;

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->l:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/support/appcompat/R$layout;->coui_time_picker:I

    invoke-virtual {p2, v2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    sget v2, Lcom/support/appcompat/R$id;->coui_time_picker_date:I

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    sget v2, Lcom/support/appcompat/R$id;->coui_time_picker_hour:I

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    sget v2, Lcom/support/appcompat/R$id;->coui_time_picker_minute:I

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    sget v2, Lcom/support/appcompat/R$id;->coui_time_picker_ampm:I

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/picker/COUINumberPicker;

    iput-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    sget v2, Lcom/support/appcompat/R$id;->pickers:I

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/support/appcompat/R$dimen;->coui_selected_background_radius:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->w:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/support/appcompat/R$dimen;->coui_selected_background_horizontal_padding:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->x:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "zh"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_119

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "en"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_119

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_number_picker_width_biggest:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string/jumbo v2, "yyyyMMMddhm"

    invoke-static {p2, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/picker/COUITimePicker;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_139
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1ca

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x4b

    if-eq v5, v6, :cond_184

    const/16 v6, 0x4d

    if-eq v5, v6, :cond_176

    const/16 v6, 0x61

    if-eq v5, v6, :cond_16b

    const/16 v6, 0x64

    if-eq v5, v6, :cond_176

    const/16 v6, 0x68

    if-eq v5, v6, :cond_184

    const/16 v6, 0x6d

    if-eq v5, v6, :cond_160

    const/16 v6, 0x79

    if-eq v5, v6, :cond_176

    goto :goto_18e

    :cond_160
    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "m"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18e

    :cond_16b
    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "a"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18e

    :cond_176
    if-nez v4, :cond_18e

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v4, "D"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, p3

    goto :goto_18e

    :cond_184
    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "h"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18e
    :goto_18e
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->b()Z

    move-result v5

    if-nez v5, :cond_1a7

    iget v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->E:I

    if-ne v5, v0, :cond_19f

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, p3

    iput v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->E:I

    :cond_19f
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, p3

    iput v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->F:I

    goto :goto_1c6

    :cond_1a7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, p3

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eq v5, v6, :cond_1c6

    iget v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->E:I

    if-ne v5, v0, :cond_1bf

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, p3

    iput v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->E:I

    :cond_1bf
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, p3

    iput v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->F:I

    :cond_1c6
    :goto_1c6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_139

    :cond_1ca
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_1d8

    iget p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->E:I

    iget v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->F:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->E:I

    iput p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->F:I

    :cond_1d8
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p2, :cond_24d

    invoke-virtual {p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->m()Z

    move-result p2

    if-eqz p2, :cond_24d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$string;->picker_talkback_tip:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_1f2

    iput-object p2, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    :cond_1f2
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$string;->coui_hour:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_22e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$string;->coui_minute:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    :cond_22e
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_24d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/support/appcompat/R$string;->coui_minute:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->E0:Ljava/lang/String;

    :cond_24d
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2e
    return-object p0
.end method

.method public final b()Z
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->l:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "time_12_24"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    const-string v0, "24"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public final c(I)Z
    .registers 2

    rem-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_8

    rem-int/lit8 p0, p1, 0x64

    if-nez p0, :cond_c

    :cond_8
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final d(Landroid/view/View;IIF)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v1, p4, v1

    if-gez v1, :cond_13

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int p4, v1

    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p3, p0, p4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->b()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->x:I

    :cond_9
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->x:I

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget v3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->w:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->x:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->w:I

    int-to-float v5, v1

    add-float/2addr v5, v0

    int-to-float v6, v1

    int-to-float v7, v1

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUITimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getTimePicker()Landroid/view/View;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->d:Ljava/util/Calendar;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_12

    :cond_c
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    :goto_12
    move v9, v3

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v11, v3, 0x1

    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->b:Ljava/util/Calendar;

    add-int/lit8 v16, v11, -0x1

    move v4, v9

    move/from16 v5, v16

    move v6, v13

    move/from16 v17, v7

    move v7, v14

    move/from16 v8, v17

    invoke-virtual/range {v3 .. v8}, Ljava/util/Calendar;->set(IIIII)V

    const v3, 0x8e94

    const/4 v8, 0x0

    move v7, v3

    move v3, v8

    :goto_59
    const/16 v4, 0x64

    const/16 v6, 0x16e

    if-ge v3, v4, :cond_70

    add-int/lit8 v4, v9, -0x32

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/picker/COUITimePicker;->c(I)Z

    move-result v4

    if-eqz v4, :cond_6a

    move v5, v6

    goto :goto_6c

    :cond_6a
    const/16 v5, 0x16d

    :goto_6c
    add-int/2addr v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_70
    move v3, v8

    move v4, v3

    :goto_72
    const/16 v5, 0x32

    if-ge v3, v5, :cond_87

    add-int/lit8 v5, v9, -0x32

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/picker/COUITimePicker;->c(I)Z

    move-result v5

    if-eqz v5, :cond_81

    move v5, v6

    goto :goto_83

    :cond_81
    const/16 v5, 0x16d

    :goto_83
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    :cond_87
    new-array v3, v7, [Ljava/lang/String;

    iput-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->m:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->a:[Ljava/lang/String;

    if-le v11, v10, :cond_a5

    add-int/lit8 v3, v9, -0x32

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->c(I)Z

    move-result v3

    if-nez v3, :cond_a5

    invoke-virtual {v0, v9}, Lcom/coui/appcompat/picker/COUITimePicker;->c(I)Z

    move-result v3

    if-eqz v3, :cond_a5

    add-int/lit8 v4, v4, 0x1

    :cond_a5
    if-le v11, v10, :cond_b1

    add-int/lit8 v3, v9, -0x32

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->c(I)Z

    move-result v3

    if-eqz v3, :cond_b1

    add-int/lit8 v4, v4, -0x1

    :cond_b1
    move v6, v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move-object v3, v5

    move v4, v9

    move-object v1, v5

    move/from16 v5, v16

    move/from16 v18, v6

    move v6, v13

    move/from16 v19, v7

    move v7, v14

    move/from16 v8, v17

    invoke-virtual/range {v3 .. v8}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v0, v9}, Lcom/coui/appcompat/picker/COUITimePicker;->c(I)Z

    move-result v3

    if-eqz v3, :cond_dc

    if-ne v11, v10, :cond_dc

    const/16 v3, 0x1d

    if-ne v13, v3, :cond_dc

    invoke-virtual {v1, v12, v2}, Ljava/util/Calendar;->add(II)V

    :cond_dc
    const/16 v3, -0x32

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/coui/appcompat/picker/COUITimePicker;->j:J

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->k:Ljava/util/Date;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUITimePicker;->b()Z

    move-result v1

    if-eqz v1, :cond_110

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->t()V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v4, 0xc

    goto :goto_13c

    :cond_110
    const/4 v3, 0x0

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v5, v0, Lcom/coui/appcompat/picker/COUITimePicker;->n:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-object v5, v0, Lcom/coui/appcompat/picker/COUITimePicker;->n:[Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    :goto_13c
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUITimePicker;->b()Z

    move-result v1

    if-eqz v1, :cond_14d

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v14}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    goto :goto_162

    :cond_14d
    if-lez v15, :cond_156

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    sub-int/2addr v14, v4

    invoke-virtual {v1, v14}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    goto :goto_15b

    :cond_156
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v14}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    :goto_15b
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iput v15, v0, Lcom/coui/appcompat/picker/COUITimePicker;->v:I

    :goto_162
    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v4, Lcom/coui/appcompat/picker/COUITimePicker$1;

    invoke-direct {v4, v0}, Lcom/coui/appcompat/picker/COUITimePicker$1;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v4, Lcom/coui/appcompat/picker/COUITimePicker$2;

    invoke-direct {v4, v0}, Lcom/coui/appcompat/picker/COUITimePicker$2;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v4, Lcom/coui/appcompat/picker/COUITimePicker$3;

    invoke-direct {v4, v0}, Lcom/coui/appcompat/picker/COUITimePicker$3;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v4, Lcom/coui/appcompat/picker/COUITimePicker$4;

    invoke-direct {v4, v0}, Lcom/coui/appcompat/picker/COUITimePicker$4;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    move/from16 v4, v17

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->t()V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v4, Lcom/coui/appcompat/picker/COUITimePicker$5;

    invoke-direct {v4, v0}, Lcom/coui/appcompat/picker/COUITimePicker$5;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v4, Lcom/coui/appcompat/picker/COUITimePicker$6;

    invoke-direct {v4, v0}, Lcom/coui/appcompat/picker/COUITimePicker$6;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMinValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    move/from16 v7, v19

    invoke-virtual {v1, v7}, Lcom/coui/appcompat/picker/COUINumberPicker;->setMaxValue(I)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    move/from16 v4, v18

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    new-instance v1, Lcom/coui/appcompat/picker/COUITimePicker$Format;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/picker/COUITimePicker$Format;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    iput-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->z:Lcom/coui/appcompat/picker/COUITimePicker$Format;

    iget-object v2, v0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v2, Lcom/coui/appcompat/picker/COUITimePicker$7;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/picker/COUITimePicker$7;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    new-instance v2, Lcom/coui/appcompat/picker/COUITimePicker$8;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/picker/COUITimePicker$8;-><init>(Lcom/coui/appcompat/picker/COUITimePicker;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V

    return-object v0
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

.method public onMeasure(II)V
    .registers 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->G:I

    if-lez v2, :cond_f

    if-le v1, v2, :cond_f

    move v1, v2

    :cond_f
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->b()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->b()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->b()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->b()V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v3

    int-to-float v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2, p1, p2, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->d(Landroid/view/View;IIF)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2, p1, p2, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->d(Landroid/view/View;IIF)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2, p1, p2, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->d(Landroid/view/View;IIF)V

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0, v2, p1, p2, v3}, Lcom/coui/appcompat/picker/COUITimePicker;->d(Landroid/view/View;IIF)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->b()Z

    move-result p1

    if-eqz p1, :cond_7e

    const/4 p1, 0x0

    goto :goto_84

    :cond_7e
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    :goto_84
    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->u:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->E:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p1, :cond_a0

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->u:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->E:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingLeft(I)V

    :cond_a0
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->u:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->F:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p1, :cond_b9

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->u:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/coui/appcompat/picker/COUITimePicker;->F:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNumberPickerPaddingRight(I)V

    :cond_b9
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->y:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "yyyyMMMddhm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/picker/COUITimePicker;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_d5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x4b

    const/4 v6, 0x1

    if-eq v4, v5, :cond_ad

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_8a

    const/16 v5, 0x61

    if-eq v4, v5, :cond_67

    const/16 v5, 0x64

    if-eq v4, v5, :cond_8a

    const/16 v5, 0x68

    if-eq v4, v5, :cond_ad

    const/16 v5, 0x6d

    if-eq v4, v5, :cond_42

    const/16 v5, 0x79

    if-eq v4, v5, :cond_8a

    goto/16 :goto_d1

    :cond_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->l:Landroid/content/Context;

    sget v6, Lcom/support/appcompat/R$string;->coui_minute:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->y:Ljava/lang/String;

    goto :goto_d1

    :cond_67
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->b()Z

    move-result v4

    if-nez v4, :cond_d1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->b()Z

    move-result v4

    if-eqz v4, :cond_78

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->n:[Ljava/lang/String;

    aget-object v4, v4, v1

    goto :goto_7c

    :cond_78
    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->n:[Ljava/lang/String;

    aget-object v4, v4, v6

    :goto_7c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/coui/appcompat/picker/COUITimePicker;->y:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->y:Ljava/lang/String;

    goto :goto_d1

    :cond_8a
    if-nez v3, :cond_d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->z:Lcom/coui/appcompat/picker/COUITimePicker$Format;

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/picker/COUITimePicker$Format;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUITimePicker;->y:Ljava/lang/String;

    move v3, v6

    goto :goto_d1

    :cond_ad
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUITimePicker;->l:Landroid/content/Context;

    sget v6, Lcom/support/appcompat/R$string;->coui_hour:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/picker/COUITimePicker;->y:Ljava/lang/String;

    :cond_d1
    :goto_d1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    :cond_d5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->y:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNormalTextColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->q:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->r:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_e
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->s:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_15
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker;->t:Lcom/coui/appcompat/picker/COUINumberPicker;

    if-eqz p0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setNormalTextColor(I)V

    :cond_1c
    return-void
.end method

.method public setOnTimeChangeListener(Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->H:Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    return-void
.end method

.method public setTimePicker(Ljava/util/Calendar;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker;->d:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->getTimePicker()Landroid/view/View;

    return-void
.end method
