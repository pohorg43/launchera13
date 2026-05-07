.class Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;
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

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$3;->this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$3;->this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;

    invoke-static {v0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->access$600(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v0, :cond_c

    move p1, v2

    goto :goto_15

    :cond_c
    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$3;->this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;

    invoke-static {v0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->access$700(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_3e

    move p1, v1

    :goto_15
    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$3;->this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;

    invoke-static {v0, v1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->access$102(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;Z)Z

    if-ne p1, v2, :cond_28

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$3;->this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;

    invoke-static {p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->access$800(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    goto :goto_33

    :cond_28
    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$3;->this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;

    invoke-static {p1}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->access$800(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/16 v0, 0x42

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    :goto_33
    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView$3;->this$0:Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;

    invoke-static {p0}, Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;->access$900(Lcom/coui/appcompat/calendar/COUICalendarDayPickerView;)Lcom/coui/appcompat/calendar/COUICalendarViewPagerScroller;

    move-result-object p0

    const/16 p1, 0x12c

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/calendar/COUICalendarViewPagerScroller;->setmDuration(I)V

    :cond_3e
    return-void
.end method
