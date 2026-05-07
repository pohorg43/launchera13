.class Lorg/hapjs/card/sdk/utils/CardServiceLoader$1;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hapjs/card/sdk/utils/CardServiceLoader;->checkEngineUpdateAsync(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    iput-object p2, p0, Lorg/hapjs/card/sdk/utils/CardServiceLoader$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    iget-object p0, p0, Lorg/hapjs/card/sdk/utils/CardServiceLoader$1;->val$ctx:Landroid/content/Context;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->checkCardApk(Landroid/content/Context;)Z

    invoke-static {}, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->checkCardPkgListUpdate()V

    return-void
.end method
