.class public final Ll2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ll2/d;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ll2/d;I)V
    .registers 3

    iput-object p1, p0, Ll2/a;->a:Ll2/d;

    iput p2, p0, Ll2/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Ll2/a;->a:Ll2/d;

    iget-object v0, v0, Ll2/f;->h:Landroid/content/Context;

    iget v1, p0, Ll2/a;->b:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Ll2/a;->a:Ll2/d;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ll2/d;->j:Landroid/graphics/Bitmap;

    return-void
.end method
