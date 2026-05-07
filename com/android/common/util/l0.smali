.class public final synthetic Lcom/android/common/util/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/common/util/l0;->a:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-wide v0, p0, Lcom/android/common/util/l0;->a:J

    invoke-static {v0, v1}, Lcom/android/common/util/VibrationUtils;->b(J)V

    return-void
.end method
