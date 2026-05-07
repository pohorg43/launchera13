.class public final Lcom/oplus/remoteanim/LauncherRemoteProxyHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/remoteanim/LauncherRemoteProxyHelper$LRPBinder;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/remoteanim/LauncherRemoteProxyHelper;

.field private static final TAG:Ljava/lang/String; = "LauncherRemoteProxyHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/remoteanim/LauncherRemoteProxyHelper;

    invoke-direct {v0}, Lcom/oplus/remoteanim/LauncherRemoteProxyHelper;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/LauncherRemoteProxyHelper;->INSTANCE:Lcom/oplus/remoteanim/LauncherRemoteProxyHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLauncherRemoteProxy()Landroid/os/IBinder;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/oplus/remoteanim/LauncherRemoteProxyHelper$LRPBinder;

    invoke-direct {v0}, Lcom/oplus/remoteanim/LauncherRemoteProxyHelper$LRPBinder;-><init>()V

    return-object v0
.end method
