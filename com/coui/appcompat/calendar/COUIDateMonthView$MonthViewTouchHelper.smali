.class Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/calendar/COUIDateMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonthViewTouchHelper"
.end annotation


# static fields
.field private static final CN_DATE_FORMAT:Ljava/lang/String; = "MMMM dd 日 EE"

.field private static final CN_LOCAL:Ljava/lang/String; = "CN"

.field private static final DATE_FORMAT:Ljava/lang/String; = "EE dd MMMM"

.field private static final HK_LOCAL:Ljava/lang/String; = "HK"

.field private static final TW_LOCAL:Ljava/lang/String; = "TW"


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/calendar/COUIDateMonthView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private getDayDescription(I)Ljava/lang/CharSequence;
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {v0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$1000(Lcom/coui/appcompat/calendar/COUIDateMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {v1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$1100(Lcom/coui/appcompat/calendar/COUIDateMonthView;)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {v2}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$1200(Lcom/coui/appcompat/calendar/COUIDateMonthView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    invoke-direct {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_22

    const-string p1, "MMMM dd 日 EE"

    goto :goto_24

    :cond_22
    const-string p1, "EE dd MMMM"

    :goto_24
    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2f
    const-string p0, ""

    return-object p0
.end method

.method private getDayText(I)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {v0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$1000(Lcom/coui/appcompat/calendar/COUIDateMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$1400(Lcom/coui/appcompat/calendar/COUIDateMonthView;)Ljava/text/NumberFormat;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private isChinese()Z
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$1300(Lcom/coui/appcompat/calendar/COUIDateMonthView;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_30

    const-string v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "TW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "HK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    :cond_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$500(Lcom/coui/appcompat/calendar/COUIDateMonthView;II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_10

    return p0

    :cond_10
    const/high16 p0, -0x80000000

    return p0
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {v1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$600(Lcom/coui/appcompat/calendar/COUIDateMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 4

    const/16 p3, 0x10

    if-eq p2, p3, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$900(Lcom/coui/appcompat/calendar/COUIDateMonthView;I)Z

    move-result p0

    return p0
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5
    .param p2  # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    iget-object v1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object p1, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const-string p1, ""

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    return-void

    :cond_1e
    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->getDayText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {v0, p1}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$700(Lcom/coui/appcompat/calendar/COUIDateMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_3e
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/calendar/COUIDateMonthView$MonthViewTouchHelper;->this$0:Lcom/coui/appcompat/calendar/COUIDateMonthView;

    invoke-static {p0}, Lcom/coui/appcompat/calendar/COUIDateMonthView;->access$800(Lcom/coui/appcompat/calendar/COUIDateMonthView;)I

    move-result p0

    if-ne p1, p0, :cond_4d

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    :cond_4d
    return-void
.end method
