.class final Lcom/oplus/statistics/OplusTrack$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/statistics/OplusTrack;->onStaticEvent(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$eventMap:Ljava/util/Map;

.field public final synthetic val$remark:Ljava/lang/String;

.field public final synthetic val$setId:Ljava/lang/String;

.field public final synthetic val$setValue:Ljava/lang/String;

.field public final synthetic val$statId:I

.field public final synthetic val$uploadMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8

    iput-object p1, p0, Lcom/oplus/statistics/OplusTrack$7;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/oplus/statistics/OplusTrack$7;->val$uploadMode:I

    iput p3, p0, Lcom/oplus/statistics/OplusTrack$7;->val$statId:I

    iput-object p4, p0, Lcom/oplus/statistics/OplusTrack$7;->val$setId:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/statistics/OplusTrack$7;->val$setValue:Ljava/lang/String;

    iput-object p6, p0, Lcom/oplus/statistics/OplusTrack$7;->val$remark:Ljava/lang/String;

    iput-object p7, p0, Lcom/oplus/statistics/OplusTrack$7;->val$eventMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/oplus/statistics/OplusTrack$7;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/oplus/statistics/OplusTrack$7;->val$uploadMode:I

    iget v2, p0, Lcom/oplus/statistics/OplusTrack$7;->val$statId:I

    iget-object v3, p0, Lcom/oplus/statistics/OplusTrack$7;->val$setId:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/statistics/OplusTrack$7;->val$setValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/statistics/OplusTrack$7;->val$remark:Ljava/lang/String;

    iget-object v6, p0, Lcom/oplus/statistics/OplusTrack$7;->val$eventMap:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcom/oplus/statistics/agent/OnEventAgent;->onStaticEvent(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
