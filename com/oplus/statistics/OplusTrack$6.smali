.class final Lcom/oplus/statistics/OplusTrack$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/statistics/OplusTrack;->onDynamicEvent(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$eventMap:Ljava/util/Map;

.field public final synthetic val$infoMap:Ljava/util/Map;

.field public final synthetic val$statId:I

.field public final synthetic val$uploadMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V
    .registers 6

    iput-object p1, p0, Lcom/oplus/statistics/OplusTrack$6;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/oplus/statistics/OplusTrack$6;->val$uploadMode:I

    iput p3, p0, Lcom/oplus/statistics/OplusTrack$6;->val$statId:I

    iput-object p4, p0, Lcom/oplus/statistics/OplusTrack$6;->val$infoMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/oplus/statistics/OplusTrack$6;->val$eventMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/statistics/OplusTrack$6;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/oplus/statistics/OplusTrack$6;->val$uploadMode:I

    iget v2, p0, Lcom/oplus/statistics/OplusTrack$6;->val$statId:I

    iget-object v3, p0, Lcom/oplus/statistics/OplusTrack$6;->val$infoMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/oplus/statistics/OplusTrack$6;->val$eventMap:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/statistics/agent/OnEventAgent;->onDynamicEvent(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V

    return-void
.end method
