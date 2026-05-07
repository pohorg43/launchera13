.class public final Lt0/d;
.super Ls0/a;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ln0/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ls0/a;-><init>()V

    new-instance v0, Ln0/d;

    invoke-direct {v0}, Ln0/d;-><init>()V

    iput-object v0, p0, Lt0/d;->b:Ln0/c;

    return-void
.end method
