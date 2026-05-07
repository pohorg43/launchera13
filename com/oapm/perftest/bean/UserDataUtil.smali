.class public Lcom/oapm/perftest/bean/UserDataUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearUserData()V
    .registers 0

    return-void
.end method

.method public static putUserData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static removeUserData(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
