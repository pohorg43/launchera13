.class Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$1;->this$0:Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$1;->this$0:Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
