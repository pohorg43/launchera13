.class public final Lt0/t$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm0/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm0/w<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/t$a;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public b()I
    .registers 1

    iget-object p0, p0, Lt0/t$a;->a:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lg1/f;->c(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public c()Ljava/lang/Class;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lt0/t$a;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public recycle()V
    .registers 1

    return-void
.end method
