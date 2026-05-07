.class public final synthetic Lcom/android/wm/shell/recents/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# static fields
.field public static final synthetic a:Lcom/android/wm/shell/recents/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/recents/d;

    invoke-direct {v0}, Lcom/android/wm/shell/recents/d;-><init>()V

    sput-object v0, Lcom/android/wm/shell/recents/d;->a:Lcom/android/wm/shell/recents/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/wm/shell/recents/IRecentTasksListener;

    invoke-static {p1}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;->a(Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    return-void
.end method
