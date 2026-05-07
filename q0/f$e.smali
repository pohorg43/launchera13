.class public Lq0/f$e;
.super Lq0/f$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq0/f$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lq0/f$e$a;

    invoke-direct {v0}, Lq0/f$e$a;-><init>()V

    invoke-direct {p0, v0}, Lq0/f$a;-><init>(Lq0/f$d;)V

    return-void
.end method
