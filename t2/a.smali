.class public final Lt2/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/util/Random;

.field public static final b:Lt2/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lt2/b;

    invoke-direct {v0}, Lt2/b;-><init>()V

    sput-object v0, Lt2/a;->a:Ljava/util/Random;

    return-void
.end method
