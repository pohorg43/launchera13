.class public final Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;

.field private static final KEY_INIT_ENTRANCE_CHANNEL_RESULT:Ljava/lang/String; = "initEntranceChannelResult"

.field private static final KEY_RELEASE_ENTRANCE_CHANNEL_RESULT:Ljava/lang/String; = "releaseEntranceChannelResult"

.field private static final METHOD_INIT_ENTRANCE_CHANNEL:Ljava/lang/String; = "initEntranceChannel"

.field private static final METHOD_RELEASE_ENTRANCE_CHANNEL:Ljava/lang/String; = "releaseEntranceChannel"

.field private static final TAG:Ljava/lang/String; = "CardServiceChannelHelper"

.field private static final assistantCardServiceUri:Landroid/net/Uri;

.field private static final umsCardServiceUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->INSTANCE:Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;

    const-string v0, "content://com.coloros.assistantscreen.client.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->assistantCardServiceUri:Landroid/net/Uri;

    const-string v0, "content://com.oplus.pantanal.ums.cardservice.provider.CardServiceClientProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->umsCardServiceUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAssistantCardServiceUri$p()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->assistantCardServiceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getUmsCardServiceUri$p()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->umsCardServiceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static final callCardServiceProvider(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "methodName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entranceAuthorityName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq3/q0;->c:Lq3/b0;

    invoke-static {v0}, Lq3/c1;->a(Lb3/f;)Lq3/f0;

    move-result-object v1

    new-instance v4, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, p2, v0}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lb3/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public static final requestDoInitChannelInCardService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entranceAuthorityName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le4/a;->a:Le4/a;

    const-string v0, "requestDoInitChannelInCardService，entrance = "

    invoke-static {v0, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "CardServiceChannelHelper"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Le4/c$a;->a(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v0, "initEntranceChannel"

    invoke-static {v0, p0, p1}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->callCardServiceProvider(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final requestDoReleaseInCardService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entranceAuthorityName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le4/a;->a:Le4/a;

    const-string v0, "requestDoReleaseInCardService，entrance="

    invoke-static {v0, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "CardServiceChannelHelper"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Le4/c$a;->a(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v0, "releaseEntranceChannel"

    invoke-static {v0, p0, p1}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->callCardServiceProvider(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
