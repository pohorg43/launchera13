.class public Lcom/android/launcher/powersave/view/ClockView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;,
        Lcom/android/launcher/powersave/view/ClockView$Factory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field public mCalendar:Ljava/util/Calendar;

.field public mDate:Landroid/widget/TextView;

.field public mFactory:Lcom/android/launcher/powersave/view/ClockView$Factory;

.field public mTime:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/powersave/view/ClockView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/powersave/view/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher/powersave/view/ClockView;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public initFactory(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/view/ClockView;->mFactory:Lcom/android/launcher/powersave/view/ClockView$Factory;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;-><init>(Lcom/android/launcher/powersave/view/ClockView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/powersave/view/ClockView;->mFactory:Lcom/android/launcher/powersave/view/ClockView$Factory;

    :cond_b
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/powersave/view/ClockView;->mCalendar:Ljava/util/Calendar;

    return-void
.end method
