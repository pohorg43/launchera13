.class public Landroidx/slice/widget/EventInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/EventInfo$SliceButtonPosition;,
        Landroidx/slice/widget/EventInfo$SliceActionType;,
        Landroidx/slice/widget/EventInfo$SliceRowType;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_BUTTON:I = 0x1

.field public static final ACTION_TYPE_CONTENT:I = 0x3

.field public static final ACTION_TYPE_DATE_PICK:I = 0x6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final ACTION_TYPE_SEE_MORE:I = 0x4

.field public static final ACTION_TYPE_SELECTION:I = 0x5

.field public static final ACTION_TYPE_SLIDER:I = 0x2

.field public static final ACTION_TYPE_TIME_PICK:I = 0x7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final ACTION_TYPE_TOGGLE:I = 0x0

.field public static final POSITION_CELL:I = 0x2

.field public static final POSITION_END:I = 0x1

.field public static final POSITION_START:I = 0x0

.field public static final ROW_TYPE_DATE_PICK:I = 0x7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final ROW_TYPE_GRID:I = 0x1

.field public static final ROW_TYPE_LIST:I = 0x0

.field public static final ROW_TYPE_MESSAGING:I = 0x2

.field public static final ROW_TYPE_PROGRESS:I = 0x5

.field public static final ROW_TYPE_SELECTION:I = 0x6

.field public static final ROW_TYPE_SHORTCUT:I = -0x1

.field public static final ROW_TYPE_SLIDER:I = 0x4

.field public static final ROW_TYPE_TIME_PICK:I = 0x8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final ROW_TYPE_TOGGLE:I = 0x3

.field public static final STATE_OFF:I = 0x0

.field public static final STATE_ON:I = 0x1


# instance fields
.field public actionCount:I

.field public actionIndex:I

.field public actionPosition:I

.field public actionType:I

.field public rowIndex:I

.field public rowTemplateType:I

.field public sliceMode:I

.field public state:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    iput p2, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    iput p3, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    iput p4, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    iput p1, p0, Landroidx/slice/widget/EventInfo;->state:I

    return-void
.end method

.method private static actionToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_24

    const-string/jumbo v0, "unknown action: "

    invoke-static {v0, p0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x7
    const-string p0, "TIME_PICK"

    return-object p0

    :pswitch_e  #0x6
    const-string p0, "DATE_PICK"

    return-object p0

    :pswitch_11  #0x5
    const-string p0, "SELECTION"

    return-object p0

    :pswitch_14  #0x4
    const-string p0, "SEE MORE"

    return-object p0

    :pswitch_17  #0x3
    const-string p0, "CONTENT"

    return-object p0

    :pswitch_1a  #0x2
    const-string p0, "SLIDER"

    return-object p0

    :pswitch_1d  #0x1
    const-string p0, "BUTTON"

    return-object p0

    :pswitch_20  #0x0
    const-string p0, "TOGGLE"

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_1d  #00000001
        :pswitch_1a  #00000002
        :pswitch_17  #00000003
        :pswitch_14  #00000004
        :pswitch_11  #00000005
        :pswitch_e  #00000006
        :pswitch_b  #00000007
    .end packed-switch
.end method

.method private static positionToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const-string/jumbo v0, "unknown position: "

    invoke-static {v0, p0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "CELL"

    return-object p0

    :cond_13
    const-string p0, "END"

    return-object p0

    :cond_16
    const-string p0, "START"

    return-object p0
.end method

.method private static rowTypeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2a

    const-string/jumbo v0, "unknown row type: "

    invoke-static {v0, p0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x8
    const-string p0, "TIME_PICK"

    return-object p0

    :pswitch_e  #0x7
    const-string p0, "DATE_PICK"

    return-object p0

    :pswitch_11  #0x6
    const-string p0, "SELECTION"

    return-object p0

    :pswitch_14  #0x5
    const-string p0, "PROGRESS"

    return-object p0

    :pswitch_17  #0x4
    const-string p0, "SLIDER"

    return-object p0

    :pswitch_1a  #0x3
    const-string p0, "TOGGLE"

    return-object p0

    :pswitch_1d  #0x2
    const-string p0, "MESSAGING"

    return-object p0

    :pswitch_20  #0x1
    const-string p0, "GRID"

    return-object p0

    :pswitch_23  #0x0
    const-string p0, "LIST"

    return-object p0

    :pswitch_26  #0xffffffff
    const-string p0, "SHORTCUT"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_26  #ffffffff
        :pswitch_23  #00000000
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
        :pswitch_17  #00000004
        :pswitch_14  #00000005
        :pswitch_11  #00000006
        :pswitch_e  #00000007
        :pswitch_b  #00000008
    .end packed-switch
.end method


# virtual methods
.method public setPosition(III)V
    .registers 4

    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    iput p2, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    iput p3, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "mode="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    invoke-static {v1}, Landroidx/slice/widget/SliceView;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    invoke-static {v1}, Landroidx/slice/widget/EventInfo;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rowTemplateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    invoke-static {v1}, Landroidx/slice/widget/EventInfo;->rowTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rowIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    invoke-static {v1}, Landroidx/slice/widget/EventInfo;->positionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/slice/widget/EventInfo;->state:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
