.class public final Lcom/oplus/compat/app/job/JobInfoNative$BuilderNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/job/JobInfoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuilderNative"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHasCpuConstraint(Landroid/app/job/JobInfo$Builder;)Z
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$800()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    if-eqz p0, :cond_1b

    iget-boolean p0, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mHasCpuConstraint:Z

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$1900()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {p0}, Lcom/oplus/compat/app/job/JobInfoNative;->access$2100(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3c
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before Q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getOplusExtraStr(Landroid/app/job/JobInfo$Builder;)Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    :cond_a
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$800()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    if-eqz p0, :cond_18

    iget-object v0, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mOplusExtraStr:Ljava/lang/String;

    :cond_18
    return-object v0

    :cond_19
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$2200()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p0}, Lcom/oplus/compat/app/job/JobInfoNative;->access$2400(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_37
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before Q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getOplusJob(Landroid/app/job/JobInfo$Builder;)Z
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$800()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    if-eqz p0, :cond_1b

    iget-boolean p0, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mIsOplusJob:Z

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$1100()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {p0}, Lcom/oplus/compat/app/job/JobInfoNative;->access$1300(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3c
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before Q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRequiresBattIdle(Landroid/app/job/JobInfo$Builder;)Z
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$800()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    if-eqz p0, :cond_1b

    iget-boolean p0, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mRequiresBattIdle:Z

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$900()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {p0}, Lcom/oplus/compat/app/job/JobInfoNative;->access$1000(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN_MR1()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$900()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4b
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before N_MR1"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRequiresProtectFore(Landroid/app/job/JobInfo$Builder;)Z
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$800()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    if-eqz p0, :cond_1b

    iget-boolean p0, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mRequiresProtectFore:Z

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    :cond_1c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$1400()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {p0}, Lcom/oplus/compat/app/job/JobInfoNative;->access$1800(Landroid/app/job/JobInfo$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3c
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "not supported before Q"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setHasCpuConstraint(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mHasCpuConstraint:Z

    goto :goto_30

    :cond_19
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$1900()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    goto :goto_30

    :cond_27
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p0, p1}, Lcom/oplus/compat/app/job/JobInfoNative;->access$2000(Landroid/app/job/JobInfo$Builder;Z)V

    :goto_30
    return-void

    :cond_31
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setHasTemperatureConstraint(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mHasTemperatureConstraint:Z

    goto :goto_30

    :cond_19
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$2500()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    goto :goto_30

    :cond_27
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p0, p1}, Lcom/oplus/compat/app/job/JobInfoNative;->access$2600(Landroid/app/job/JobInfo$Builder;Z)V

    :goto_30
    return-void

    :cond_31
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOplusExtraStr(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    iput-object p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mOplusExtraStr:Ljava/lang/String;

    goto :goto_30

    :cond_19
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$2200()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_30

    :cond_27
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p0, p1}, Lcom/oplus/compat/app/job/JobInfoNative;->access$2300(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V

    :goto_30
    return-void

    :cond_31
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setOplusJob(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mIsOplusJob:Z

    goto :goto_30

    :cond_19
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$1100()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    goto :goto_30

    :cond_27
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p0, p1}, Lcom/oplus/compat/app/job/JobInfoNative;->access$1200(Landroid/app/job/JobInfo$Builder;Z)V

    :goto_30
    return-void

    :cond_31
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setRequiresBattIdle(Landroid/app/job/JobInfo$Builder;ZI)V
    .registers 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    if-nez p0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    invoke-virtual {p0, p1, p2}, Landroid/app/job/IJobInfoExt$JobBuilderExt;->setRequiresBattIdle(ZI)Landroid/app/job/IJobInfoExt$JobBuilderExt;

    goto :goto_5d

    :cond_1a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$600()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, p0, v3}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_38
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {p0, p1, p2}, Lcom/oplus/compat/app/job/JobInfoNative;->access$700(Landroid/app/job/JobInfo$Builder;ZI)V

    goto :goto_5d

    :cond_42
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN_MR1()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$600()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, p0, v3}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5d
    return-void

    :cond_5e
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before N_MR1"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setRequiresProtectFore(Landroid/app/job/JobInfo$Builder;Z)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mRequiresProtectFore:Z

    goto :goto_30

    :cond_19
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$1400()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    goto :goto_30

    :cond_27
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p0, p1}, Lcom/oplus/compat/app/job/JobInfoNative;->access$1500(Landroid/app/job/JobInfo$Builder;Z)V

    :goto_30
    return-void

    :cond_31
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setRequiresProtectFore(Landroid/app/job/JobInfo$Builder;ZI)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mRequiresProtectFore:Z

    iput p2, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mProtectForeType:I

    goto :goto_39

    :cond_1b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$1400()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$1600()Lcom/oplus/utils/reflect/RefInt;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/oplus/utils/reflect/RefInt;->set(Ljava/lang/Object;I)V

    goto :goto_39

    :cond_30
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {p0, p1, p2}, Lcom/oplus/compat/app/job/JobInfoNative;->access$1700(Landroid/app/job/JobInfo$Builder;ZI)V

    :goto_39
    return-void

    :cond_3a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setRequiresProtectScene(Landroid/app/job/JobInfo$Builder;ZI)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$RefJobInfoBuilderInfo;->access$500()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;

    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mHasProtectSceneConstraint:Z

    iput p2, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mProtectScene:I

    goto :goto_39

    :cond_1b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$2700()Lcom/oplus/utils/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/utils/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/oplus/compat/app/job/JobInfoNative$ReflectInfo;->access$2800()Lcom/oplus/utils/reflect/RefInt;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/oplus/utils/reflect/RefInt;->set(Ljava/lang/Object;I)V

    goto :goto_39

    :cond_30
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {p0, p1, p2}, Lcom/oplus/compat/app/job/JobInfoNative;->access$2900(Landroid/app/job/JobInfo$Builder;ZI)V

    :goto_39
    return-void

    :cond_3a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
