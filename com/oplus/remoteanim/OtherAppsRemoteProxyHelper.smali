.class public final Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper;

.field private static final TAG:Ljava/lang/String; = "OtherAppsRemoteProxyHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper;

    invoke-direct {v0}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper;->INSTANCE:Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getOtherAppsRemoteProxy()Landroid/os/IBinder;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;

    invoke-direct {v0}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;-><init>()V

    return-object v0
.end method
