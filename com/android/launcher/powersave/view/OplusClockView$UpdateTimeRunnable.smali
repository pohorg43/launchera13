.class Lcom/android/launcher/powersave/view/OplusClockView$UpdateTimeRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/powersave/view/OplusClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTimeRunnable"
.end annotation


# instance fields
.field public mClock:Lcom/android/launcher/powersave/view/OplusClockView;

.field public mTimezoneChanged:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/powersave/view/OplusClockView;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/view/OplusClockView$UpdateTimeRunnable;->mClock:Lcom/android/launcher/powersave/view/OplusClockView;

    iput-boolean p2, p0, Lcom/android/launcher/powersave/view/OplusClockView$UpdateTimeRunnable;->mTimezoneChanged:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/powersave/view/OplusClockView$UpdateTimeRunnable;->mTimezoneChanged:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher/powersave/view/OplusClockView$UpdateTimeRunnable;->mClock:Lcom/android/launcher/powersave/view/OplusClockView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher/powersave/view/ClockView;->mCalendar:Ljava/util/Calendar;

    :cond_c
    iget-object p0, p0, Lcom/android/launcher/powersave/view/OplusClockView$UpdateTimeRunnable;->mClock:Lcom/android/launcher/powersave/view/OplusClockView;

    invoke-virtual {p0}, Lcom/android/launcher/powersave/view/OplusClockView;->updateTime()V

    return-void
.end method
