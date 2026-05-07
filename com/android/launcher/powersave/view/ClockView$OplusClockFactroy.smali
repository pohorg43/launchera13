.class Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/powersave/view/ClockView$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/powersave/view/ClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OplusClockFactroy"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusClockFactroy"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/launcher/powersave/view/ClockView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/powersave/view/ClockView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->this$0:Lcom/android/launcher/powersave/view/ClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private formatCNWeek(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x7

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    packed-switch p0, :pswitch_data_60

    const-string p0, ""

    return-object p0

    :pswitch_b  #0x7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1204e7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17  #0x6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1204e5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_23  #0x5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1204e9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2f  #0x4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1204eb

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3b  #0x3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1204ea

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_47  #0x2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1204e6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_53  #0x1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1204e8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_53  #00000001
        :pswitch_47  #00000002
        :pswitch_3b  #00000003
        :pswitch_2f  #00000004
        :pswitch_23  #00000005
        :pswitch_17  #00000006
        :pswitch_b  #00000007
    .end packed-switch
.end method

.method private getDateString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->this$0:Lcom/android/launcher/powersave/view/ClockView;

    iget-object v0, v0, Lcom/android/launcher/powersave/view/ClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_1e

    :cond_1d
    move v0, v3

    :goto_1e
    int-to-long v4, v0

    add-long/2addr v1, v4

    iget-object v0, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->mContext:Landroid/content/Context;

    const v3, 0x10018

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->this$0:Lcom/android/launcher/powersave/view/ClockView;

    iget-object v2, v2, Lcom/android/launcher/powersave/view/ClockView;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->formatCNWeek(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "  "

    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_67

    :cond_5e
    iget-object p0, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->mContext:Landroid/content/Context;

    const v0, 0x1801a

    invoke-static {p0, v1, v2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    :goto_67
    invoke-static {}, Lcom/android/launcher/powersave/view/ClockView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_83

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorClockFactroy getDateString: date is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusClockFactroy"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    return-object p0
.end method

.method private getTimeString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->this$0:Lcom/android/launcher/powersave/view/ClockView;

    iget-object v0, v0, Lcom/android/launcher/powersave/view/ClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_42

    const-string p0, "\\D*(\\d+.\\d+).*"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_42
    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v1, "OplusClockFactroy"

    const/16 v2, 0xa

    if-eqz p0, :cond_55

    const/16 p0, 0x3a

    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    :cond_55
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_64

    const/16 p0, 0x2e

    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    :cond_64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTime error, result = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_78
    invoke-static {}, Lcom/android/launcher/powersave/view/ClockView;->access$000()Z

    move-result p0

    if-eqz p0, :cond_92

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorClockFactroy getTime: sysTimeStr is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    return-object v0
.end method


# virtual methods
.method public refreshDate()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->this$0:Lcom/android/launcher/powersave/view/ClockView;

    iget-object v0, v0, Lcom/android/launcher/powersave/view/ClockView;->mDate:Landroid/widget/TextView;

    if-nez v0, :cond_f

    const-string p0, "OplusClockFactroy"

    const-string/jumbo v0, "refreshDate fail mDateView is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-direct {p0}, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->getDateString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public refreshTime()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->this$0:Lcom/android/launcher/powersave/view/ClockView;

    iget-object v1, v0, Lcom/android/launcher/powersave/view/ClockView;->mCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_c

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher/powersave/view/ClockView;->mCalendar:Ljava/util/Calendar;

    :cond_c
    invoke-direct {p0}, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->getTimeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string p0, "OplusClockFactroy"

    const-string v0, "getTime error"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    iget-object p0, p0, Lcom/android/launcher/powersave/view/ClockView$OplusClockFactroy;->this$0:Lcom/android/launcher/powersave/view/ClockView;

    iget-object p0, p0, Lcom/android/launcher/powersave/view/ClockView;->mTime:Landroid/widget/TextView;

    if-eqz p0, :cond_27

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    return-void
.end method
