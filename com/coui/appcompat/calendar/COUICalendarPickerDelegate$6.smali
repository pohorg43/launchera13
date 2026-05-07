.class Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/calendar/COUICalendarYearView$OnYearSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYearChanged(Lcom/coui/appcompat/calendar/COUICalendarYearView;III)V
    .registers 6

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    iget-object p1, p1, Lcom/coui/appcompat/calendar/COUICalendarPicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    iget-object p1, p1, Lcom/coui/appcompat/calendar/COUICalendarPicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    iget-object p1, p1, Lcom/coui/appcompat/calendar/COUICalendarPicker$AbstractDatePickerDelegate;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate$6;->this$0:Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;

    invoke-static {p0, v0, v0}, Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;->access$300(Lcom/coui/appcompat/calendar/COUICalendarPickerDelegate;ZZ)V

    return-void
.end method
