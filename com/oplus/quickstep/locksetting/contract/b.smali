.class public final synthetic Lcom/oplus/quickstep/locksetting/contract/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

.field public final synthetic b:Landroid/content/pm/LauncherActivityInfo;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Landroid/content/pm/LauncherActivityInfo;Ljava/lang/String;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/b;->a:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/contract/b;->b:Landroid/content/pm/LauncherActivityInfo;

    iput-object p3, p0, Lcom/oplus/quickstep/locksetting/contract/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/quickstep/locksetting/contract/b;->d:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/b;->a:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/b;->b:Landroid/content/pm/LauncherActivityInfo;

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/contract/b;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/b;->d:Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->f(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Landroid/content/pm/LauncherActivityInfo;Ljava/lang/String;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;)V

    return-void
.end method
