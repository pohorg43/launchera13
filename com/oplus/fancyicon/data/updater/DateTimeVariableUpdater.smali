.class public Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;
.super Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$TimeUpdater;,
        Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final LUNAR_LENGTH:I = 0x3

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field private static final UPDATE_INTERVAL:I = 0xc8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"


# instance fields
.field private mAmPm:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field public mCalendar:Ljava/util/Calendar;

.field private mCurDay:I

.field private mCurMonth:I

.field private mCurYear:I

.field private mCurrentTime:J

.field private mDate:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mDateFormat:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mDateLunar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mDayOfWeek:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mFeast:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mHour12:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mHour24:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mLastUpdatedTime:J

.field private mLocale:Ljava/util/Locale;

.field private mMinute:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mMonth:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mMonthLunar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mMustUpdateTime:Z

.field private mNextAlarm:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mNextUpdateTime:J

.field private mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

.field private mSecond:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mSolarTerm:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mTime:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mTimeAccuracy:J

.field private mTimeFormat:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mTimeSys:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private final mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Lcom/oplus/fancyicon/data/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 3

    sget-object v0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, v0, p1}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;-><init>(Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 5

    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {p0, v1, v0}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurDay:I

    iput v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurMonth:I

    iput v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurYear:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurrentTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMustUpdateTime:Z

    iput-object p2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    new-instance p2, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$TimeUpdater;

    invoke-direct {p2, p0}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$TimeUpdater;-><init>(Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->initInner(Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 7

    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {p0, v1, v0}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurDay:I

    iput v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurMonth:I

    iput v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurYear:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurrentTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMustUpdateTime:Z

    iput-object p2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    new-instance p2, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$TimeUpdater;

    invoke-direct {p2, p0}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$TimeUpdater;-><init>(Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_43

    invoke-static {}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;->values()[Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;

    move-result-object p2

    array-length v1, p2

    :goto_31
    if-ge v0, v1, :cond_43

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_44

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_43
    const/4 v2, 0x0

    :goto_44
    if-nez v2, :cond_5e

    sget-object v2, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid accuracy tag:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DateTimeVariableUpdater"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    invoke-direct {p0, v2}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->initInner(Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method private checkUpdateTime()V
    .registers 9

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeAccuracy:J

    div-long v4, v0, v2

    mul-long/2addr v4, v2

    iget-wide v6, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_2d

    iput-wide v4, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurrentTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mNextUpdateTime:J

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->updateTime()V

    iget-object v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeSys:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    long-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    :cond_2d
    iget-object v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initInner(Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$Accuracy;)V
    .registers 9

    const-string v0, "init with accuracy:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateTimeVariableUpdater"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater$1;->$SwitchMap$com$oplus$fancyicon$data$updater$DateTimeVariableUpdater$Accuracy:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-wide/32 v1, 0x5265c00

    const-wide/32 v3, 0x36ee80

    if-eq p1, v0, :cond_3f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_39

    const/4 v0, 0x3

    if-eq p1, v0, :cond_36

    const/4 v0, 0x4

    if-eq p1, v0, :cond_33

    iput-wide v3, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto :goto_43

    :cond_33
    iput-wide v1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto :goto_43

    :cond_36
    iput-wide v3, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto :goto_43

    :cond_39
    const-wide/32 v5, 0xea60

    iput-wide v5, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto :goto_43

    :cond_3f
    const-wide/16 v5, 0x3e8

    iput-wide v5, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeAccuracy:J

    :goto_43
    invoke-static {}, Lcom/oplus/fancyicon/util/FeatureOption;->isExp()Z

    move-result p1

    if-eqz p1, :cond_51

    iget-wide v5, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeAccuracy:J

    cmp-long p1, v5, v1

    if-nez p1, :cond_51

    iput-wide v3, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeAccuracy:J

    :cond_51
    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "year"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mYear:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "month"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMonth:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "date"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mDate:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "month_lunar"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMonthLunar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "date_lunar"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mDateLunar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "lunar_solar_term"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mSolarTerm:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "feast"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mFeast:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "day_of_week"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mDayOfWeek:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "ampm"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mAmPm:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "hour12"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mHour12:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "hour24"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mHour24:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "minute"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMinute:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "second"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mSecond:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "time"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTime:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "time_sys"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeSys:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "next_alarm_time"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mNextAlarm:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "time_format"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeFormat:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p1, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v0

    const-string v1, "date_format"

    invoke-direct {p1, v1, v0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mDateFormat:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->updateTime()V

    return-void
.end method

.method private refreshAlarm()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mNextAlarm:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    return-void
.end method

.method private updateTime()V
    .registers 13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mLastUpdatedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_13

    iget-boolean v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMustUpdateTime:Z

    if-eqz v2, :cond_10e

    :cond_13
    iget-object v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v7, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mAmPm:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v10, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mHour12:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v10, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mHour24:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v10, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMinute:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v10, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mYear:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    int-to-double v10, v2

    invoke-virtual {v9, v10, v11}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMonth:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    int-to-double v10, v5

    invoke-virtual {v9, v10, v11}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mDate:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    int-to-double v10, v7

    invoke-virtual {v9, v10, v11}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mDayOfWeek:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v10, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mSecond:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v10, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    iget-object v10, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mHour12:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {v10}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v10

    iget-object v11, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMinute:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-virtual {v11}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/oplus/fancyicon/ScreenElementRoot;->setClockTime(Ljava/lang/Double;Ljava/lang/Double;)V

    iget v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurDay:I

    if-ne v7, v9, :cond_b3

    iget v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurYear:I

    if-ne v2, v9, :cond_b3

    iget v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurMonth:I

    if-eq v5, v9, :cond_10c

    :cond_b3
    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v9}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_f4

    iget-object v9, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v9}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/oplus/fancyicon/calendar/LunarHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/fancyicon/calendar/LunarHelper;

    move-result-object v9

    add-int/2addr v5, v4

    invoke-virtual {v9, v2, v5, v7}, Lcom/oplus/fancyicon/calendar/LunarHelper;->getFeastStrings(III)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move v7, v3

    :goto_cc
    const/4 v9, 0x3

    if-ge v7, v9, :cond_d9

    aget-object v10, v2, v7

    if-eqz v10, :cond_d6

    aget-object v5, v2, v7

    goto :goto_d9

    :cond_d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_cc

    :cond_d9
    :goto_d9
    iget-object v7, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mFeast:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {v7, v5}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mSolarTerm:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    aget-object v7, v2, v9

    invoke-virtual {v5, v7}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMonthLunar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    aget-object v7, v2, v8

    invoke-virtual {v5, v7}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mDateLunar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    const/4 v7, 0x4

    aget-object v2, v2, v7

    invoke-virtual {v5, v2}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    :cond_f4
    iget-object v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurDay:I

    iget-object v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurMonth:I

    iget-object v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurYear:I

    :cond_10c
    iput-wide v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mLastUpdatedTime:J

    :cond_10e
    iput-boolean v3, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMustUpdateTime:Z

    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->init()V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mMustUpdateTime:Z

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->onRenderThreadStoped()V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->pause()V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .registers 4

    invoke-super {p0}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->resume()V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeFormat:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    goto :goto_18

    :cond_16
    const-wide/16 v1, 0x0

    :goto_18
    invoke-virtual {v0, v1, v2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    :cond_1b
    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mDateFormat:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    :cond_32
    invoke-direct {p0}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->refreshAlarm()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_5b

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mCurrentTime:J

    iput-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mLocale:Ljava/util/Locale;

    :cond_5b
    invoke-direct {p0}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public tick(J)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->tick(J)V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTime:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    long-to-double p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object p1, p0, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->mTimeSys:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;->updateTime()V

    return-void
.end method
