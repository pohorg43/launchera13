.class Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

.field public final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;Landroid/database/Cursor;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$3;->this$0:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$3;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$3;->this$0:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$3;->val$cursor:Landroid/database/Cursor;

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->b(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;Landroid/database/Cursor;)V

    return-void
.end method
