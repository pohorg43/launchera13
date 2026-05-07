.class public Lcom/coui/appcompat/calendar/COUICalendarYearView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/calendar/COUICalendarYearView$OnYearSelectedListener;
    }
.end annotation


# static fields
.field private static final ITEM_LAYOUT:I


# instance fields
.field private mOnYearSelectedListener:Lcom/coui/appcompat/calendar/COUICalendarYearView$OnYearSelectedListener;

.field private mPicker:Lcom/coui/appcompat/picker/COUIDatePicker;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/support/appcompat/R$layout;->coui_year_label_text_view:I

    sput v0, Lcom/coui/appcompat/calendar/COUICalendarYearView;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiDatePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/calendar/COUICalendarYearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/calendar/COUICalendarYearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/coui/appcompat/calendar/COUICalendarYearView;->ITEM_LAYOUT:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/support/appcompat/R$id;->year_picker:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/picker/COUIDatePicker;

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarYearView;->mPicker:Lcom/coui/appcompat/picker/COUIDatePicker;

    new-instance p2, Lcom/coui/appcompat/calendar/COUICalendarYearView$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/calendar/COUICalendarYearView$1;-><init>(Lcom/coui/appcompat/calendar/COUICalendarYearView;)V

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->setOnDateChangedListener(Lcom/coui/appcompat/picker/COUIDatePicker$OnDateChangedListener;)V

    return-void
.end method


# virtual methods
.method public setCurrentYear()V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarYearView;->mOnYearSelectedListener:Lcom/coui/appcompat/calendar/COUICalendarYearView$OnYearSelectedListener;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUICalendarYearView;->mPicker:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/COUIDatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUICalendarYearView;->mPicker:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/picker/COUIDatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/calendar/COUICalendarYearView;->mPicker:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/picker/COUIDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/coui/appcompat/calendar/COUICalendarYearView$OnYearSelectedListener;->onYearChanged(Lcom/coui/appcompat/calendar/COUICalendarYearView;III)V

    :cond_19
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarYearView;->mPicker:Lcom/coui/appcompat/picker/COUIDatePicker;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->f(III)V

    return-void
.end method

.method public setOnYearSelectedListener(Lcom/coui/appcompat/calendar/COUICalendarYearView$OnYearSelectedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarYearView;->mOnYearSelectedListener:Lcom/coui/appcompat/calendar/COUICalendarYearView$OnYearSelectedListener;

    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarYearView;->mPicker:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/picker/COUIDatePicker;->setMinDate(J)V

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarYearView;->mPicker:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->setMaxDate(J)V

    return-void
.end method
