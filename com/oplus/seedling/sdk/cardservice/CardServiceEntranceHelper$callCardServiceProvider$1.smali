.class final Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.oplus.seedling.sdk.cardservice.CardServiceEntranceHelper$callCardServiceProvider$1"
    f = "CardServiceEntranceHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->callCardServiceProvider(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $entranceAuthorityName:Ljava/lang/String;

.field public final synthetic $methodName:Ljava/lang/String;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lb3/d<",
            "-",
            "Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$methodName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$entranceAuthorityName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$methodName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$entranceAuthorityName:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v1, p0

    iget v0, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->label:I

    if-nez v0, :cond_19a

    invoke-static/range {p1 .. p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$context:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ld4/a;->a:Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_81

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_19
    const/16 v2, 0x21

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_21

    move v2, v5

    goto :goto_22

    :cond_21
    move v2, v4

    :goto_22
    if-nez v2, :cond_31

    sget-object v6, Le4/a;->a:Le4/a;

    const-string v7, "PantanalUtils"

    const-string v8, "below OS14, card service not running in UMS"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Le4/c$a;->b(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_72

    :cond_31
    const-string v2, "com.oplus.pantanal.ums"

    const-string v3, "isCardServiceSupport"

    invoke-static {v0, v2, v3, v4}, Le4/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v6, Le4/a;->a:Le4/a;

    const-string v7, "PantanalUtils"

    const-string v8, "UMS not support card service"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Le4/c$a;->b(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_72

    :cond_48
    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_4a
    .catchall {:try_start_19 .. :try_end_4a} :catchall_4b

    goto :goto_50

    :catchall_4b
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_50
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_64

    sget-object v6, Le4/a;->a:Le4/a;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "PantanalUtils"

    const-string v8, "UMS support card service"

    invoke-static/range {v6 .. v11}, Le4/c$a;->b(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    move v0, v5

    goto :goto_73

    :cond_64
    sget-object v12, Le4/a;->a:Le4/a;

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "PantanalUtils"

    const-string v14, "onFailure below OS14, card service not running in UMS"

    invoke-static/range {v12 .. v17}, Le4/c$a;->b(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_72
    move v0, v4

    :goto_73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ld4/a;->a:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_85

    :cond_81
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_85
    if-eqz v0, :cond_8c

    invoke-static {}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->access$getUmsCardServiceUri$p()Landroid/net/Uri;

    move-result-object v0

    goto :goto_90

    :cond_8c
    invoke-static {}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->access$getAssistantCardServiceUri$p()Landroid/net/Uri;

    move-result-object v0

    :goto_90
    move-object v2, v0

    iget-object v0, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$methodName:Ljava/lang/String;

    iget-object v3, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$entranceAuthorityName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callCardServiceProvider,uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", methodName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",authority = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CardServiceChannelHelper"

    invoke-static {v3, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$context:Landroid/content/Context;

    iget-object v3, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$methodName:Ljava/lang/String;

    iget-object v6, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$entranceAuthorityName:Ljava/lang/String;

    const/4 v7, 0x0

    :try_start_c7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v8
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_13f

    if-nez v8, :cond_d3

    move-object v0, v7

    goto :goto_d7

    :cond_d3
    :try_start_d3
    invoke-virtual {v8, v3, v6, v7}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_d7
    if-nez v0, :cond_f5

    sget-object v9, Le4/a;->a:Le4/a;

    const-string v10, "CardServiceChannelHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client is null,uri = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Le4/c$a;->c(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_f6

    :cond_f5
    move-object v7, v0

    :goto_f6
    const-string v0, "initEntranceChannel"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    if-nez v7, :cond_101

    goto :goto_136

    :cond_101
    const-string v0, "initEntranceChannelResult"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_136

    :cond_108
    const-string v0, "releaseEntranceChannel"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    if-nez v7, :cond_113

    goto :goto_136

    :cond_113
    const-string v0, "releaseEntranceChannelResult"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_136

    :cond_11a
    sget-object v9, Le4/a;->a:Le4/a;

    const-string v10, "CardServiceChannelHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not match method = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Le4/c$a;->c(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_135
    .catchall {:try_start_d3 .. :try_end_135} :catchall_13b

    move v5, v4

    :goto_136
    :try_start_136
    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_138
    .catchall {:try_start_136 .. :try_end_138} :catchall_139

    goto :goto_146

    :catchall_139
    move-exception v0

    goto :goto_13d

    :catchall_13b
    move-exception v0

    move v5, v4

    :goto_13d
    move-object v7, v8

    goto :goto_141

    :catchall_13f
    move-exception v0

    move v5, v4

    :goto_141
    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v7

    :goto_146
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_14e

    move v4, v5

    goto :goto_160

    :cond_14e
    if-nez v8, :cond_151

    goto :goto_154

    :cond_151
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->close()V

    :goto_154
    sget-object v9, Le4/a;->a:Le4/a;

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "CardServiceChannelHelper"

    const-string v11, "callCardServiceProvider failed"

    invoke-static/range {v9 .. v14}, Le4/c$a;->a(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_160
    sget-object v5, Le4/a;->a:Le4/a;

    iget-object v0, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$methodName:Ljava/lang/String;

    iget-object v1, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$entranceAuthorityName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callCardServiceProvider "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", method= "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",args = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",callResult="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "CardServiceChannelHelper"

    invoke-static/range {v5 .. v10}, Le4/c$a;->b(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_19a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
