.class public Lcom/oplus/fancyicon/data/binder/BuiltinVariableBinders;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COLUMN_LUNAR_DAY:Ljava/lang/String; = "lunar_day"

.field private static final COLUMN_LUNAR_MONTH:Ljava/lang/String; = "lunar_month"

.field private static final COLUMN_NUMBER:Ljava/lang/String; = "number"

.field private static final COLUMN_SOLAR_TERM:Ljava/lang/String; = "solar_term"

.field private static final URI_LUNAR_INFO:Ljava/lang/String; = "content://com.android.calendar.CalendarFeastProvider/feast"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fill(Lcom/oplus/fancyicon/data/binder/VariableBinderManager;)V
    .registers 2

    invoke-static {p0}, Lcom/oplus/fancyicon/data/binder/BuiltinVariableBinders;->fillMissedCall(Lcom/oplus/fancyicon/data/binder/VariableBinderManager;)V

    invoke-static {p0}, Lcom/oplus/fancyicon/data/binder/BuiltinVariableBinders;->fillUnreadSms(Lcom/oplus/fancyicon/data/binder/VariableBinderManager;)V

    invoke-static {}, Lcom/oplus/fancyicon/util/FeatureOption;->isExp()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/oplus/fancyicon/data/binder/BuiltinVariableBinders;->fillLunarDayInfo(Lcom/oplus/fancyicon/data/binder/VariableBinderManager;)V

    :cond_f
    return-void
.end method

.method public static fillLunarDayInfo(Lcom/oplus/fancyicon/data/binder/VariableBinderManager;)V
    .registers 7

    if-eqz p0, :cond_30

    const-string v0, "lunar_month"

    const-string v1, "lunar_day"

    const-string v2, "solar_term"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.android.calendar.CalendarFeastProvider/feast"

    invoke-virtual {p0, v4}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->addContentProviderBinder(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    move-result-object p0

    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    move-result-object p0

    const-string v3, "lunar_date_month"

    const-string v4, "string"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    move-result-object p0

    const-string v0, "lunar_date_day"

    invoke-virtual {p0, v0, v4, v1, v5}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    move-result-object p0

    const-string v0, "lunar_date_solar_term"

    invoke-virtual {p0, v0, v4, v2, v5}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    :cond_30
    return-void
.end method

.method public static fillMissedCall(Lcom/oplus/fancyicon/data/binder/VariableBinderManager;)V
    .registers 2

    if-eqz p0, :cond_d

    const-string v0, "content://settings/system/oplus_customize_missed_calls_number"

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->addContentProviderBinder(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    move-result-object p0

    const-string v0, "call_missed_count"

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    :cond_d
    return-void
.end method

.method private static fillUnreadSms(Lcom/oplus/fancyicon/data/binder/VariableBinderManager;)V
    .registers 2

    if-eqz p0, :cond_d

    const-string v0, "content://settings/system/oplus_customize_unread_mms_number"

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/binder/VariableBinderManager;->addContentProviderBinder(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    move-result-object p0

    const-string v0, "sms_unread_count"

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;

    :cond_d
    return-void
.end method
