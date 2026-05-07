.class Lcom/nearme/instant/xcard/CardClient$5;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/instant/xcard/CardClient;->initCardEngineChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nearme/instant/xcard/CardClient;


# direct methods
.method public constructor <init>(Lcom/nearme/instant/xcard/CardClient;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/instant/xcard/CardClient$5;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient$5;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-static {p0}, Lcom/nearme/instant/xcard/CardClient;->access$300(Lcom/nearme/instant/xcard/CardClient;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->checkEngineUpdateAsync(Landroid/content/Context;Z)V

    return-void
.end method
