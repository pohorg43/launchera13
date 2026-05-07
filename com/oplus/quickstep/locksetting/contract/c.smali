.class public final synthetic Lcom/oplus/quickstep/locksetting/contract/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/oplus/quickstep/locksetting/contract/AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;Ljava/util/ArrayList;Lcom/oplus/quickstep/locksetting/contract/AppEntry;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/c;->a:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/contract/c;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/oplus/quickstep/locksetting/contract/c;->c:Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    return-void
.end method


# virtual methods
.method public final onIconLoad(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/c;->a:Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/c;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/c;->c:Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;->a(Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;Ljava/util/ArrayList;Lcom/oplus/quickstep/locksetting/contract/AppEntry;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
