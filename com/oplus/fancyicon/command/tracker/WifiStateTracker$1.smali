.class Lcom/oplus/fancyicon/command/tracker/WifiStateTracker$1;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/fancyicon/command/tracker/WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/command/tracker/WifiStateTracker;

.field public final synthetic val$desiredState:Z

.field public final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/command/tracker/WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/fancyicon/command/tracker/WifiStateTracker$1;->this$0:Lcom/oplus/fancyicon/command/tracker/WifiStateTracker;

    iput-object p2, p0, Lcom/oplus/fancyicon/command/tracker/WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/oplus/fancyicon/command/tracker/WifiStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/oplus/fancyicon/command/tracker/WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getWifiApState"

    invoke-static {v0, v3, v2}, Lcom/oplus/fancyicon/util/ReflectUtil;->processFun(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v2, p0, Lcom/oplus/fancyicon/command/tracker/WifiStateTracker$1;->val$desiredState:Z

    if-eqz v2, :cond_34

    const/16 v2, 0xc

    if-eq v0, v2, :cond_22

    const/16 v2, 0xd

    if-ne v0, v2, :cond_34

    :cond_22
    iget-object v0, p0, Lcom/oplus/fancyicon/command/tracker/WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    const/4 v1, 0x1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    const-string v1, "setWifiApEnabled"

    invoke-static {v0, v1, v2}, Lcom/oplus/fancyicon/util/ReflectUtil;->processFun(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    iget-object v0, p0, Lcom/oplus/fancyicon/command/tracker/WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean p0, p0, Lcom/oplus/fancyicon/command/tracker/WifiStateTracker$1;->val$desiredState:Z

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method
