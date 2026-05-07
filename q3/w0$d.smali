.class public final Lq3/w0$d;
.super Lv3/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv3/b0<",
        "Lq3/w0$c;",
        ">;"
    }
.end annotation


# instance fields
.field public b:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Lv3/b0;-><init>()V

    iput-wide p1, p0, Lq3/w0$d;->b:J

    return-void
.end method
