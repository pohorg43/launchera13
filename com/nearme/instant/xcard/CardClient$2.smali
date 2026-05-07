.class Lcom/nearme/instant/xcard/CardClient$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nearme/instant/xcard/ICardEngineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/instant/xcard/CardClient;->initInternal(Landroid/content/Context;ZJ)V
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

    iput-object p1, p0, Lcom/nearme/instant/xcard/CardClient$2;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEngineInitException()V
    .registers 4

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient$2;->this$0:Lcom/nearme/instant/xcard/CardClient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nearme/instant/xcard/CardClient;->access$100(Lcom/nearme/instant/xcard/CardClient;ILjava/lang/Throwable;)V

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient$2;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-static {p0, v2}, Lcom/nearme/instant/xcard/CardClient;->access$202(Lcom/nearme/instant/xcard/CardClient;Lcom/nearme/instant/xcard/ICardEngineListener;)Lcom/nearme/instant/xcard/ICardEngineListener;

    return-void
.end method

.method public onInitSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/nearme/instant/xcard/CardClient$2;->this$0:Lcom/nearme/instant/xcard/CardClient;

    invoke-static {v0}, Lcom/nearme/instant/xcard/CardClient;->access$000(Lcom/nearme/instant/xcard/CardClient;)V

    iget-object p0, p0, Lcom/nearme/instant/xcard/CardClient$2;->this$0:Lcom/nearme/instant/xcard/CardClient;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nearme/instant/xcard/CardClient;->access$202(Lcom/nearme/instant/xcard/CardClient;Lcom/nearme/instant/xcard/ICardEngineListener;)Lcom/nearme/instant/xcard/ICardEngineListener;

    return-void
.end method
