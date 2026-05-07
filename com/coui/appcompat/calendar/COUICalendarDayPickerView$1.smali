.class Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter$OnDaySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$1;->this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaySelected(Lcom/coui/appcompat/calendar/COUICalendarDayPagerAdapter;Ljava/util/Calendar;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$1;->this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;

    invoke-static {p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->access$000(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$OnDaySelectedListener;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$1;->this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;

    invoke-static {p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->access$000(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$OnDaySelectedListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$1;->this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;

    invoke-interface {p1, p0, p2}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$OnDaySelectedListener;->onDaySelected(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;Ljava/util/Calendar;)V

    :cond_13
    return-void
.end method
