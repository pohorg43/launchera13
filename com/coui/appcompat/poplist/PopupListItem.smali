.class public Lcom/coui/appcompat/poplist/PopupListItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    iput-object p2, p0, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    iput-boolean p4, p0, Lcom/coui/appcompat/poplist/PopupListItem;->f:Z

    iput-boolean p6, p0, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    iput p5, p0, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    return-void
.end method
