.class public Lr0/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq0/o<",
        "Lq0/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lq0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/m<",
            "Lq0/g;",
            "Lq0/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq0/m;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lq0/m;-><init>(J)V

    iput-object v0, p0, Lr0/a$a;->a:Lq0/m;

    return-void
.end method


# virtual methods
.method public a(Lq0/r;)Lq0/n;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/r;",
            ")",
            "Lq0/n<",
            "Lq0/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lr0/a;

    iget-object p0, p0, Lr0/a$a;->a:Lq0/m;

    invoke-direct {p1, p0}, Lr0/a;-><init>(Lq0/m;)V

    return-object p1
.end method
