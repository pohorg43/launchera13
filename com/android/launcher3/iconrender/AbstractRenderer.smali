.class public abstract Lcom/android/launcher3/iconrender/AbstractRenderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/iconrender/IRenderer;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    return-void
.end method


# virtual methods
.method public beforeTextViewOnMeasure(Lcom/android/launcher3/BubbleTextView;II)V
    .registers 4

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public onBindApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    return-void
.end method

.method public onBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 3

    return-void
.end method

.method public onTextAppearanceChanged(I)V
    .registers 2

    return-void
.end method

.method public onViewReset(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    return-void
.end method

.method public priority()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
