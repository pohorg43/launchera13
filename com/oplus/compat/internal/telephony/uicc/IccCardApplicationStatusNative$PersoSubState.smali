.class public Lcom/oplus/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/internal/telephony/uicc/IccCardApplicationStatusNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersoSubState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getState()I
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/oplus/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefConstructor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/utils/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-static {}, Lcom/oplus/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_28
    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before Q"

    invoke-direct {v0, v1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
