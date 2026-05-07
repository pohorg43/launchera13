.class public final Lm0/i$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm0/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm0/j$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/a;

.field public final synthetic b:Lm0/i;


# direct methods
.method public constructor <init>(Lm0/i;Lcom/bumptech/glide/load/a;)V
    .registers 3

    iput-object p1, p0, Lm0/i$b;->b:Lm0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm0/i$b;->a:Lcom/bumptech/glide/load/a;

    return-void
.end method
