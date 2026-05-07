.class public final Lr2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lr2/b;


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ZZ)V
    .registers 5

    const-string v0, "mBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2/a;->a:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lr2/a;->b:Z

    iput-boolean p3, p0, Lr2/a;->c:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    return-void
.end method
