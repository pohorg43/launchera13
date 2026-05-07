.class public final Lcom/oplus/card/manager/domain/model/CardAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/model/CardAction$ACTION;,
        Lcom/oplus/card/manager/domain/model/CardAction$HOST;,
        Lcom/oplus/card/manager/domain/model/CardAction$Companion;
    }
.end annotation


# static fields
.field private static final ACTION_CONFIG_PULL:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_CREATE:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_DESTROY:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_EXPOSED:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_HIDDEN:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_HIDE:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_INVALIDATE:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_PAUSE:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_RENDER_FAIL:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_RESUME:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_SHOW:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_START:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_STOP:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_SUBSCRIBED:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_UNSUBSCRIBED:Lcom/oplus/card/manager/domain/model/CardAction;

.field private static final ACTION_UPDATE_DATA:Lcom/oplus/card/manager/domain/model/CardAction;

.field public static final CLICK_ID_KEY:Ljava/lang/String; = "click_id"

.field public static final CONFIGURATION_LIST_KEY:Ljava/lang/String; = "configuration_list_key"

.field public static final Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

.field public static final EXPOSED_STATE_KEY:Ljava/lang/String; = "exposed_state"

.field public static final EXPOSED_STATE_VALUE_EXPOSED:Ljava/lang/String; = "exposed"

.field public static final EXPOSED_STATE_VALUE_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final LIFE_CIRCLE_KEY:Ljava/lang/String; = "life_circle"

.field public static final LIFE_CIRCLE_VALUE_CREATE:Ljava/lang/String; = "create"

.field public static final LIFE_CIRCLE_VALUE_DESTROY:Ljava/lang/String; = "destroy"

.field public static final LIFE_CIRCLE_VALUE_HIDE:Ljava/lang/String; = "hide"

.field public static final LIFE_CIRCLE_VALUE_PAUSE:Ljava/lang/String; = "pause"

.field public static final LIFE_CIRCLE_VALUE_RENDER_FAIL:Ljava/lang/String; = "render_fail"

.field public static final LIFE_CIRCLE_VALUE_RESUME:Ljava/lang/String; = "resume"

.field public static final LIFE_CIRCLE_VALUE_SHOW:Ljava/lang/String; = "show"

.field public static final LIFE_CIRCLE_VALUE_START:Ljava/lang/String; = "start"

.field public static final LIFE_CIRCLE_VALUE_STOP:Ljava/lang/String; = "stop"

.field public static final LIFE_CIRCLE_VALUE_SUBSCRIBED:Ljava/lang/String; = "subscribed"

.field public static final LIFE_CIRCLE_VALUE_UNSUBSCRIBED:Ljava/lang/String; = "unsubscribed"

.field public static final LIFE_CIRCLE_VALUE_UPDATE_DATA:Ljava/lang/String; = "update_data"

.field public static final PUBLISH_CONFIGURATION_LIST:Ljava/lang/String; = "publish_configuration_list"

.field public static final SEED_ACTION_KEY_PAGE_ID:Ljava/lang/String; = "page_id"

.field public static final SEED_ACTION_VERSION_CODE:Ljava/lang/String; = "upk_version_code"

.field public static final SEED_CARD_ENTRANCE:Ljava/lang/String; = "seedling_entrance"

.field public static final SEED_CREATE_BUSINESS_DATA:Ljava/lang/String; = "business_data"

.field public static final SEED_CREATE_CARD_CREATE_TYPE:Ljava/lang/String; = "card_create_type"

.field public static final SEED_CREATE_CARD_SIZE:Ljava/lang/String; = "card_size"

.field public static final SEED_CREATE_SERVICE_ID:Ljava/lang/String; = "service_id"


# instance fields
.field private final action:I

.field private final param:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    const/4 v2, 0x1

    new-array v3, v2, [Ly2/i;

    new-instance v4, Ly2/i;

    const-string v5, "life_circle"

    const-string v6, "create"

    invoke-direct {v4, v5, v6}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v3}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v4, v3}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_CREATE:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v3, v2, [Ly2/i;

    new-instance v7, Ly2/i;

    const-string v8, "destroy"

    invoke-direct {v7, v5, v8}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    invoke-static {v3}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_DESTROY:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v3, v2, [Ly2/i;

    new-instance v7, Ly2/i;

    const-string v8, "start"

    invoke-direct {v7, v5, v8}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    invoke-static {v3}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_START:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v3, v2, [Ly2/i;

    new-instance v7, Ly2/i;

    const-string v8, "stop"

    invoke-direct {v7, v5, v8}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    invoke-static {v3}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_STOP:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v3, v2, [Ly2/i;

    new-instance v7, Ly2/i;

    const-string v8, "resume"

    invoke-direct {v7, v5, v8}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    invoke-static {v3}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_RESUME:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v3, v2, [Ly2/i;

    new-instance v7, Ly2/i;

    const-string v8, "pause"

    invoke-direct {v7, v5, v8}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    invoke-static {v3}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_PAUSE:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v3, v2, [Ly2/i;

    new-instance v7, Ly2/i;

    const-string v8, "subscribed"

    invoke-direct {v7, v5, v8}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    invoke-static {v3}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_SUBSCRIBED:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v3, v2, [Ly2/i;

    new-instance v7, Ly2/i;

    const-string v8, "unsubscribed"

    invoke-direct {v7, v5, v8}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    invoke-static {v3}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_UNSUBSCRIBED:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v3, v2, [Ly2/i;

    new-instance v7, Ly2/i;

    const-string v8, "render_fail"

    invoke-direct {v7, v5, v8}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    invoke-static {v3}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_RENDER_FAIL:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v3, v2, [Ly2/i;

    new-instance v7, Ly2/i;

    const-string v8, "exposed_state"

    const-string v9, "exposed"

    invoke-direct {v7, v8, v9}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    invoke-static {v3}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x3

    invoke-direct {v0, v7, v3}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_EXPOSED:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v3, v2, [Ly2/i;

    new-instance v9, Ly2/i;

    const-string v10, "hidden"

    invoke-direct {v9, v8, v10}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v3, v6

    invoke-static {v3}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v7, v3}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_HIDDEN:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_INVALIDATE:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_CONFIG_PULL:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v1, v2, [Ly2/i;

    new-instance v3, Ly2/i;

    const-string v7, "show"

    invoke-direct {v3, v5, v7}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v6

    invoke-static {v1}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_SHOW:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v1, v2, [Ly2/i;

    new-instance v3, Ly2/i;

    const-string v7, "hide"

    invoke-direct {v3, v5, v7}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v6

    invoke-static {v1}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_HIDE:Lcom/oplus/card/manager/domain/model/CardAction;

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction;

    new-array v1, v2, [Ly2/i;

    new-instance v2, Ly2/i;

    const-string v3, "update_data"

    invoke-direct {v2, v5, v3}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v6

    invoke-static {v1}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_UPDATE_DATA:Lcom/oplus/card/manager/domain/model/CardAction;

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/card/manager/domain/model/CardAction;->action:I

    iput-object p2, p0, Lcom/oplus/card/manager/domain/model/CardAction;->param:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getACTION_CONFIG_PULL$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_CONFIG_PULL:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_CREATE$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_CREATE:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_DESTROY$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_DESTROY:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_EXPOSED$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_EXPOSED:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_HIDDEN$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_HIDDEN:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_HIDE$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_HIDE:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_INVALIDATE$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_INVALIDATE:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_PAUSE$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_PAUSE:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_RENDER_FAIL$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_RENDER_FAIL:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_RESUME$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_RESUME:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_SHOW$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_SHOW:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_START$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_START:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_STOP$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_STOP:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_SUBSCRIBED$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_SUBSCRIBED:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_UNSUBSCRIBED$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_UNSUBSCRIBED:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_UPDATE_DATA$cp()Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 1

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->ACTION_UPDATE_DATA:Lcom/oplus/card/manager/domain/model/CardAction;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/oplus/card/manager/domain/model/CardAction;ILjava/util/Map;ILjava/lang/Object;)Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/oplus/card/manager/domain/model/CardAction;->action:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/oplus/card/manager/domain/model/CardAction;->param:Ljava/util/Map;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/domain/model/CardAction;->copy(ILjava/util/Map;)Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardAction;->action:I

    return p0
.end method

.method public final component2()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardAction;->param:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(ILjava/util/Map;)Lcom/oplus/card/manager/domain/model/CardAction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/card/manager/domain/model/CardAction;"
        }
    .end annotation

    new-instance p0, Lcom/oplus/card/manager/domain/model/CardAction;

    invoke-direct {p0, p1, p2}, Lcom/oplus/card/manager/domain/model/CardAction;-><init>(ILjava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/card/manager/domain/model/CardAction;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/card/manager/domain/model/CardAction;

    iget v1, p0, Lcom/oplus/card/manager/domain/model/CardAction;->action:I

    iget v3, p1, Lcom/oplus/card/manager/domain/model/CardAction;->action:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardAction;->param:Ljava/util/Map;

    iget-object p1, p1, Lcom/oplus/card/manager/domain/model/CardAction;->param:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getAction()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardAction;->action:I

    return p0
.end method

.method public final getParam()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardAction;->param:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/oplus/card/manager/domain/model/CardAction;->action:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardAction;->param:Ljava/util/Map;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_12
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "CardAction(action="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/card/manager/domain/model/CardAction;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardAction;->param:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
