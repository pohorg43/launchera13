.class public final synthetic Lcom/android/launcher3/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/registry/IExtCreatorObjGetter;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/d;

.field public static final synthetic c:Lcom/android/launcher3/d;

.field public static final synthetic d:Lcom/android/launcher3/d;

.field public static final synthetic e:Lcom/android/launcher3/d;

.field public static final synthetic f:Lcom/android/launcher3/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/d;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/d;->b:Lcom/android/launcher3/d;

    new-instance v0, Lcom/android/launcher3/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/d;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/d;->c:Lcom/android/launcher3/d;

    new-instance v0, Lcom/android/launcher3/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/d;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/d;->d:Lcom/android/launcher3/d;

    new-instance v0, Lcom/android/launcher3/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/d;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/d;->e:Lcom/android/launcher3/d;

    new-instance v0, Lcom/android/launcher3/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/d;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/d;->f:Lcom/android/launcher3/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/oplus/ext/core/IExtCreator;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/d;->a:I

    packed-switch p0, :pswitch_data_24

    goto :goto_1e

    :pswitch_6  #0x3
    new-instance p0, Lcom/android/quickstep/RotationTouchHelperExtFoldScreenImpl;

    invoke-direct {p0}, Lcom/android/quickstep/RotationTouchHelperExtFoldScreenImpl;-><init>()V

    return-object p0

    :pswitch_c  #0x2
    new-instance p0, Lcom/android/quickstep/BaseActivityInterfaceExtOplusImpl;

    invoke-direct {p0}, Lcom/android/quickstep/BaseActivityInterfaceExtOplusImpl;-><init>()V

    return-object p0

    :pswitch_12  #0x1
    new-instance p0, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtFoldScreenImpl;

    invoke-direct {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtFoldScreenImpl;-><init>()V

    return-object p0

    :pswitch_18  #0x0
    new-instance p0, Lcom/android/launcher3/AppWidgetResizeFrameExtTabletImpl;

    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrameExtTabletImpl;-><init>()V

    return-object p0

    :goto_1e
    new-instance p0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;-><init>()V

    return-object p0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_12  #00000001
        :pswitch_c  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
