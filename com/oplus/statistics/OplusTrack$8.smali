.class final Lcom/oplus/statistics/OplusTrack$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/statistics/OplusTrack;->onKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$eventID:Ljava/lang/String;

.field public final synthetic val$eventMap:Ljava/util/Map;

.field public final synthetic val$eventTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/statistics/OplusTrack$8;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/statistics/OplusTrack$8;->val$eventID:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/statistics/OplusTrack$8;->val$eventMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/oplus/statistics/OplusTrack$8;->val$eventTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/statistics/OplusTrack$8;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/statistics/OplusTrack$8;->val$eventID:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/statistics/OplusTrack$8;->val$eventMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/oplus/statistics/OplusTrack$8;->val$eventTag:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/statistics/agent/OnEventAgent;->onKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
